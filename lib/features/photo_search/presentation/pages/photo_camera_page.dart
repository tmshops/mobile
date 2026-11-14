import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../bloc/photo_camera_cubit.dart';
import '../widgets/photo_camera_view.dart';

/// «Поиск по фото»: camera and gallery (UI_DESIGN §7.6, TZ §5.8).
class PhotoCameraPage extends StatelessWidget {
  const PhotoCameraPage({
    required this.onClose,
    required this.onPhoto,
    super.key,
  });

  final VoidCallback onClose;

  /// A photo was taken or picked: next comes the crop screen.
  final ValueChanged<String> onPhoto;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PhotoCameraCubit>()..load(),
      child: PhotoCameraView(onClose: onClose, onPhoto: onPhoto),
    );
  }
}
