import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/l10n.dart';
import '../theme/theme.dart';
import '../widgets/states/app_toast.dart';

/// Hands something to another app: the dialer, a messenger, mail, maps or
/// the store. When nothing can open it (a tablet without a dialer, no
/// maps app), the value is copied and a toast says so, so a tap is
/// never lost.
abstract final class ExternalLinks {
  /// Opens [uri] outside the app; `false` when nothing could. Tests
  /// replace it.
  @visibleForTesting
  static Future<bool> Function(Uri uri) launch = _launch;

  static Future<bool> _launch(Uri uri) async {
    try {
      return await launchUrl(uri, mode: LaunchMode.externalApplication);
    } on PlatformException {
      return false;
    }
  }

  /// The dialer with [phone] filled in («+993 12 00 00 00»).
  static Future<void> call(BuildContext context, String phone) => _open(
    context,
    Uri(scheme: 'tel', path: phone.replaceAll(RegExp(r'[^\d+]'), '')),
    fallback: phone,
  );

  /// A new mail to [email].
  static Future<void> email(BuildContext context, String email) => _open(
    context,
    Uri(scheme: 'mailto', path: email),
    fallback: email,
  );

  /// The maps app searching for [address] (a route can start from there).
  static Future<void> map(BuildContext context, String address) => _open(
    context,
    defaultTargetPlatform == TargetPlatform.iOS
        ? Uri.https('maps.apple.com', '/', {'q': address})
        : Uri(scheme: 'geo', path: '0,0', queryParameters: {'q': address}),
    fallback: address,
  );

  /// A web, store, Telegram or WhatsApp link, or any `tel:` / `mailto:`
  /// link from server HTML.
  static Future<void> url(BuildContext context, String link) {
    final uri = Uri.tryParse(link);
    if (uri == null || !uri.hasScheme) return _copy(context, link);
    return _open(context, uri, fallback: link);
  }

  static Future<void> _open(
    BuildContext context,
    Uri uri, {
    required String fallback,
  }) async {
    if (await launch(uri)) return;
    if (!context.mounted) return;
    await _copy(context, fallback);
  }

  static Future<void> _copy(BuildContext context, String value) async {
    await Clipboard.setData(ClipboardData(text: value));
    if (!context.mounted) return;
    showAppToast(
      context,
      message: context.l10n.externalCopied(value),
      icon: AppIcons.copy,
    );
  }
}
