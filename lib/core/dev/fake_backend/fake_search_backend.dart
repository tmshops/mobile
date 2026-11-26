import 'fake_catalog_tree.dart';

/// Dev stand-in for the search hints API (TZ §5.7): popular queries and
/// live suggestions. Results themselves come from the catalog endpoint
/// with `q=` (see `FakeCatalogBackend`).
///
/// Suggestions are category names, alone and with a brand, so every one
/// of them finds products. A query that matches nothing gets the closest
/// category name as «Возможно, вы искали…», as the server's typo fixing
/// would.
class FakeSearchBackend {
  FakeSearchBackend();

  static const _maxSuggestions = 8;

  /// Brands the fake catalog uses (`FakeCatalogBackend`).
  static const _brands = ['Xiaomi', 'Anker', 'Baseus', 'Li-Ning', 'Anta'];

  static const _popularRu = [
    'Кроссовки',
    'Наушники',
    'Платья',
    'Смарт-часы',
    'Пауэрбанки',
    'Рюкзаки',
    'Конструкторы',
    'Посуда',
  ];
  static const _popularTk = [
    'Krossowkalar',
    'Gulaklyklar',
    'Köýnekler',
    'Akylly sagatlar',
    'Pauerbanklar',
    'Arka torbalar',
    'Konstruktorlar',
    'Gap-gaç',
  ];

  Map<String, dynamic> popular(String lang) => {
    'queries': lang == 'tk' ? _popularTk : _popularRu,
  };

  Map<String, dynamic> suggest(String lang, String text) {
    final typed = text.trim().toLowerCase();
    if (typed.isEmpty) return {'suggestions': <String>[]};
    final names = _leafNames(lang);
    final found = <String>[
      for (final name in names)
        if (name.toLowerCase().startsWith(typed)) name,
      for (final name in names)
        if (!name.toLowerCase().startsWith(typed) &&
            name.toLowerCase().contains(typed))
          name,
    ];
    // «кроссовки x» → «Кроссовки Xiaomi».
    final words = typed.split(' ');
    if (found.isEmpty && words.length > 1) {
      final head = words.sublist(0, words.length - 1).join(' ');
      final tail = words.last;
      for (final name in names) {
        if (name.toLowerCase() != head) continue;
        for (final brand in _brands) {
          if (brand.toLowerCase().startsWith(tail)) found.add('$name $brand');
        }
      }
    }
    if (found.isNotEmpty) {
      return {
        'suggestions': {...found}.take(_maxSuggestions).toList(),
      };
    }
    final closest = _closest(typed, names);
    return {'suggestions': <String>[], 'did_you_mean': ?closest};
  }

  static List<String> _leafNames(String lang) {
    final names = <String>{};
    void walk(FakeNode node) {
      if (node.children.isEmpty) names.add(lang == 'tk' ? node.tk : node.ru);
      node.children.forEach(walk);
    }

    FakeCatalogTree.roots.forEach(walk);
    return names.toList();
  }

  /// The name nearest to [typed], if near enough to be a typo: at most one
  /// edit per four letters.
  static String? _closest(String typed, List<String> names) {
    String? best;
    var bestDistance = typed.length ~/ 4 + 1;
    for (final name in names) {
      final d = _distance(typed, name.toLowerCase());
      if (d < bestDistance) {
        best = name;
        bestDistance = d;
      }
    }
    return best;
  }

  /// Levenshtein distance.
  static int _distance(String a, String b) {
    var previous = List<int>.generate(b.length + 1, (i) => i);
    for (var i = 1; i <= a.length; i++) {
      final current = List<int>.filled(b.length + 1, 0)..[0] = i;
      for (var j = 1; j <= b.length; j++) {
        final cost = a[i - 1] == b[j - 1] ? 0 : 1;
        current[j] = [
          previous[j] + 1,
          current[j - 1] + 1,
          previous[j - 1] + cost,
        ].reduce((x, y) => x < y ? x : y);
      }
      previous = current;
    }
    return previous[b.length];
  }
}
