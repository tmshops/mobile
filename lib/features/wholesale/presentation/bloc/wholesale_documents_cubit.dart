import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/wholesale.dart';
import '../../domain/repositories/wholesale_repository.dart';

part 'wholesale_documents_cubit.freezed.dart';

@freezed
sealed class WholesaleDocumentsState with _$WholesaleDocumentsState {
  const factory WholesaleDocumentsState.loading() = DocumentsLoading;
  const factory WholesaleDocumentsState.loaded(List<OrderDocuments> orders) =
      DocumentsLoaded;
  const factory WholesaleDocumentsState.failure(Failure failure) =
      DocumentsFailure;
}

/// «Опт: документы» (UI_DESIGN §7.23): invoices and waybills per order.
@injectable
class WholesaleDocumentsCubit extends Cubit<WholesaleDocumentsState> {
  WholesaleDocumentsCubit(this._repository)
    : super(const WholesaleDocumentsState.loading());

  final WholesaleRepository _repository;

  Future<void> load(String languageCode) async {
    // «Повторить» shows loading again; pull-to-refresh keeps the list.
    if (state is DocumentsFailure) {
      emit(const WholesaleDocumentsState.loading());
    }
    final result = await _repository.documents(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        WholesaleDocumentsState.failure,
        WholesaleDocumentsState.loaded,
      ),
    );
  }
}
