import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/photo_search_repository.dart';

/// Photos on the device for the camera screen's gallery strip. Empty until
/// loaded or when they cannot be read: the camera still works.
@injectable
class PhotoCameraCubit extends Cubit<List<String>> {
  PhotoCameraCubit(this._repository) : super(const []);

  final PhotoSearchRepository _repository;

  Future<void> load() async {
    final result = await _repository.devicePhotos();
    if (isClosed) return;
    result.match((_) {}, emit);
  }
}
