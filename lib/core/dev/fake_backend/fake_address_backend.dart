import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';

/// Dev stand-in for delivery addresses and reverse geocoding (TZ §5.16,
/// §7.5: geocoding goes through the backend).
///
/// Geocoding is made up: the point picks a street and a house number
/// from Ashgabat names, so moving the map changes the address the way a
/// real one would. Two addresses are seeded so the list is not empty.
@LazySingleton(env: [Environment.dev])
class FakeAddressBackend {
  FakeAddressBackend() {
    _seed();
  }

  final _addresses = <String, Map<String, dynamic>>{};
  var _nextId = 1;
  String? _defaultId;

  /// Where the phone «is»: the city centre.
  static const deviceLat = 37.9601;
  static const deviceLng = 58.3261;

  static const _streets = [
    ('просп. Битарап Туркменистан', 'Bitarap Türkmenistan şaýoly'),
    ('ул. Андалиба', 'Andalyp köçesi'),
    ('просп. Магтымгулы', 'Magtymguly şaýoly'),
    ('ул. Атабаева', 'Atabaýew köçesi'),
    ('ул. Гёроглы', 'Görogly köçesi'),
    ('просп. Арчабил', 'Arçabil şaýoly'),
    ('ул. Огузхана', 'Oguzhan köçesi'),
    ('ул. Азади', 'Azady köçesi'),
  ];
  static const _streetStep = 0.004;
  static const _houseStep = 0.0006;
  static const _houses = 120;

  /// Farther than this from the centre is outside the city.
  static const _cityRadius = 0.08;

  void _seed() {
    final home = _create(
      lat: 37.9512,
      lng: 58.3794,
      details: 'кв. 14, 3 подъезд',
    );
    _create(lat: 37.9325, lng: 58.3893, details: 'офис 205');
    _defaultId = home;
  }

  String _create({
    required double lat,
    required double lng,
    required String details,
  }) {
    final id = 'a${_nextId++}';
    _addresses[id] = {'id': id, 'lat': lat, 'lng': lng, 'details': details};
    return id;
  }

  Map<String, dynamic> list(String lang) => {
    'addresses': [
      // The default one first.
      for (final a in _addresses.values)
        if (a['id'] == _defaultId) _json(lang, a),
      for (final a in _addresses.values.toList().reversed)
        if (a['id'] != _defaultId) _json(lang, a),
    ],
  };

  /// `{address, region}` for the point.
  Map<String, dynamic> reverse(String lang, double lat, double lng) {
    final isTk = lang == 'tk';
    final isOutside =
        (lat - deviceLat).abs() > _cityRadius ||
        (lng - deviceLng).abs() > _cityRadius;
    if (isOutside) {
      return {
        'address': isTk ? 'Aşgabadyň daşynda' : 'За пределами Ашхабада',
        'region': isTk ? 'Ahal welaýaty' : 'Ахалский велаят',
      };
    }
    final street =
        _streets[(lat / _streetStep).floor().abs() % _streets.length];
    final house = (lng / _houseStep).floor().abs() % _houses + 1;
    return {
      'address': '${isTk ? street.$2 : street.$1}, $house',
      'region': isTk ? 'Aşgabat' : 'Ашхабад',
    };
  }

  /// [body]: `{id?, lat, lng, details, is_default}`.
  Map<String, dynamic> save(String lang, Map<String, dynamic> body) {
    final lat = (body['lat'] as num?)?.toDouble();
    final lng = (body['lng'] as num?)?.toDouble();
    if (lat == null || lng == null) {
      throw const ServerException(code: 'validation');
    }
    final details = (body['details'] as String? ?? '').trim();
    var id = body['id'] as String?;
    if (id != null && _addresses.containsKey(id)) {
      _addresses[id] = {'id': id, 'lat': lat, 'lng': lng, 'details': details};
    } else {
      id = _create(lat: lat, lng: lng, details: details);
    }
    if (body['is_default'] == true || _defaultId == null) _defaultId = id;
    return _json(lang, _addresses[id]!);
  }

  void setDefault(String id) {
    if (!_addresses.containsKey(id)) throw const ServerException(code: '404');
    _defaultId = id;
  }

  void delete(String id) {
    _addresses.remove(id);
    if (_defaultId == id) _defaultId = _addresses.keys.firstOrNull;
  }

  Map<String, dynamic> _json(String lang, Map<String, dynamic> a) {
    final lat = a['lat'] as double;
    final lng = a['lng'] as double;
    return {
      ...a,
      ...reverse(lang, lat, lng),
      'is_default': a['id'] == _defaultId,
    };
  }
}
