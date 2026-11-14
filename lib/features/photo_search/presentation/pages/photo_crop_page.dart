import 'package:flutter/material.dart';

import '../../domain/entities/photo_search.dart';
import '../widgets/photo_crop_view.dart';

/// Choosing the area of the photo to search by (UI_DESIGN §7.6).
class PhotoCropPage extends StatelessWidget {
  const PhotoCropPage({
    required this.imageUrl,
    required this.onSearch,
    super.key,
  });

  final String imageUrl;
  final ValueChanged<PhotoCrop> onSearch;

  @override
  Widget build(BuildContext context) =>
      PhotoCropView(imageUrl: imageUrl, onSearch: onSearch);
}
