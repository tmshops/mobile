import 'package:injectable/injectable.dart';

import '../error/exceptions.dart';
import '../network/network_info.dart';

/// Region list from the app config. Throws [NetworkException].
abstract interface class RegionRemoteDataSource {
  /// `[{id, name}]` in the request language.
  Future<List<Map<String, String>>> getRegions(String languageCode);
}

/// Dev stand-in until the config endpoint exists.
@LazySingleton(as: RegionRemoteDataSource, env: [Environment.dev])
class FakeRegionRemoteDataSource implements RegionRemoteDataSource {
  const FakeRegionRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;

  static const _regions = [
    ('ashgabat', 'Ашхабад', 'Aşgabat'),
    ('ahal', 'Ахалский велаят', 'Ahal welaýaty'),
    ('balkan', 'Балканский велаят', 'Balkan welaýaty'),
    ('dashoguz', 'Дашогузский велаят', 'Daşoguz welaýaty'),
    ('lebap', 'Лебапский велаят', 'Lebap welaýaty'),
    ('mary', 'Марыйский велаят', 'Mary welaýaty'),
  ];

  @override
  Future<List<Map<String, String>>> getRegions(String languageCode) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    return [
      for (final (id, ru, tk) in _regions)
        {'id': id, 'name': languageCode == 'tk' ? tk : ru},
    ];
  }
}
