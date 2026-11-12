/// Facts about this build, shown in «О приложении».
abstract final class AppInfo {
  /// Must match `version:` in pubspec.yaml (without the build number); a
  /// test fails when they drift apart.
  static const version = '1.0.0';
}
