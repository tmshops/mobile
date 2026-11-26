import 'package:injectable/injectable.dart';

import '../dev/fake_backend/fake_photo_search_backend.dart';

/// Photos the customer can attach: the camera and gallery of the phone.
///
/// Until `image_picker` is added (it needs approval, see TZ §2), the dev
/// build imitates a phone with a few photos, and «taking a photo» picks
/// one of them. Data sources call this; widgets never do.
abstract interface class DevicePhotos {
  /// Gallery photos, newest first.
  Future<List<String>> gallery();
}

@LazySingleton(as: DevicePhotos, env: [Environment.dev])
class FakeDevicePhotos implements DevicePhotos {
  FakeDevicePhotos();

  final _backend = FakePhotoSearchBackend();

  @override
  Future<List<String>> gallery() async => _backend.photos();
}
