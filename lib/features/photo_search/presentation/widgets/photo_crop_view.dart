import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/photo_search.dart';
import 'crop_frame.dart';

/// Crop screen of photo search (UI_DESIGN §7.6): the photo with a
/// draggable frame; «Найти похожие» searches inside the frame.
class PhotoCropView extends StatefulWidget {
  const PhotoCropView({
    required this.imageUrl,
    required this.onSearch,
    super.key,
  });

  final String imageUrl;
  final ValueChanged<PhotoCrop> onSearch;

  /// The frame starts a little inside the edges: the item is usually in
  /// the middle, and the corners are easy to find.
  static const initialCrop = PhotoCrop(
    left: 0.1,
    top: 0.1,
    width: 0.8,
    height: 0.8,
  );

  @override
  State<PhotoCropView> createState() => _PhotoCropViewState();
}

class _PhotoCropViewState extends State<PhotoCropView> {
  PhotoCrop _crop = PhotoCropView.initialCrop;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: c.graphite,
      appBar: AppBar(
        backgroundColor: c.graphite,
        foregroundColor: c.onGraphite,
        title: Text(l10n.photoCropTitle),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CropFrame(
                    photo: AppNetworkImage(url: widget.imageUrl),
                    crop: _crop,
                    onChanged: (crop) => setState(() => _crop = crop),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.screen),
              child: Column(
                children: [
                  Text(
                    l10n.photoCropHint,
                    textAlign: TextAlign.center,
                    style: context.text.caption.copyWith(color: c.onGraphite),
                  ),
                  const SizedBox(height: AppSpacing.x16),
                  PrimaryButton(
                    label: l10n.productFindSimilar,
                    icon: AppIcons.search,
                    onPressed: () => widget.onSearch(_crop),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
