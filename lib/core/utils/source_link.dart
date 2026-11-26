/// Links to the marketplaces the shop buys from (TZ §5.9).
abstract final class SourceLinks {
  /// Hosts of connected sources, short links included. Will come from the
  /// config once the backend sends it.
  static const hosts = ['taobao.com', 'tb.cn', '1688.com', 'tmall.com'];

  static final _url = RegExp(r'https?://\S+', caseSensitive: false);

  /// The first source link in [text]: a bare link or the «Поделиться» text
  /// of a marketplace app. `null` when there is none.
  static String? find(String text) {
    for (final match in _url.allMatches(text)) {
      final link = match.group(0) ?? '';
      final host = Uri.tryParse(link)?.host.toLowerCase() ?? '';
      if (hosts.any((h) => host == h || host.endsWith('.$h'))) return link;
    }
    return null;
  }
}
