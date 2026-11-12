import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/info.dart';
import '../../domain/repositories/info_repository.dart';

part 'info_cubits.freezed.dart';

/// One information page on screen.
@freezed
abstract class InfoState<T> with _$InfoState<T> {
  const factory InfoState({
    @Default(true) bool isLoading,
    T? data,

    /// Only kept while there is nothing to show; a failed refresh leaves
    /// the page as it was.
    Failure? failure,
  }) = _InfoState<T>;
}

/// Loads one page and keeps it through failed refreshes.
abstract class InfoLoadCubit<T> extends Cubit<InfoState<T>> {
  InfoLoadCubit() : super(InfoState<T>());

  @protected
  Future<void> run(Future<Either<Failure, T>> request) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await request;
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(
          isLoading: false,
          failure: state.data == null ? failure : null,
        ),
        (data) => InfoState<T>(isLoading: false, data: data),
      ),
    );
  }
}

/// «О нас», «Возврат», «Оферта», «Политика».
@injectable
class InfoArticleCubit extends InfoLoadCubit<InfoArticle> {
  InfoArticleCubit(this._repository);

  final InfoRepository _repository;

  Future<void> load(String languageCode, InfoTopic topic) =>
      run(_repository.article(languageCode, topic));
}

/// «Доставка и оплата».
@injectable
class DeliveryTermsCubit extends InfoLoadCubit<DeliveryTerms> {
  DeliveryTermsCubit(this._repository);

  final InfoRepository _repository;

  Future<void> load(String languageCode) =>
      run(_repository.deliveryTerms(languageCode));
}

/// «Пункты выдачи».
@injectable
class PickupPointsCubit extends InfoLoadCubit<List<PickupPointInfo>> {
  PickupPointsCubit(this._repository);

  final InfoRepository _repository;

  Future<void> load(String languageCode) =>
      run(_repository.pickupPoints(languageCode));
}

/// «Контакты».
@injectable
class ContactsCubit extends InfoLoadCubit<StoreContacts> {
  ContactsCubit(this._repository);

  final InfoRepository _repository;

  Future<void> load(String languageCode) =>
      run(_repository.contacts(languageCode));
}

@freezed
abstract class FaqState with _$FaqState {
  const factory FaqState({
    @Default(true) bool isLoading,
    @Default(<FaqSection>[]) List<FaqSection> sections,
    @Default('') String query,
    Failure? failure,
  }) = _FaqState;

  const FaqState._();

  /// What the list shows: everything, or the matches of [query].
  List<FaqSection> get visible => searchFaq(sections, query);

  bool get isSearching => query.trim().isNotEmpty;

  /// [visible] once there is an answer; `null` while the first load runs
  /// or after it failed.
  List<FaqSection>? get loaded =>
      failure != null || (isLoading && sections.isEmpty) ? null : visible;
}

/// FAQ as a searchable accordion (UI_DESIGN §7.25).
@injectable
class FaqCubit extends Cubit<FaqState> {
  FaqCubit(this._repository) : super(const FaqState());

  final InfoRepository _repository;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _repository.faq(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(
          isLoading: false,
          failure: state.sections.isEmpty ? failure : null,
        ),
        (sections) => state.copyWith(isLoading: false, sections: sections),
      ),
    );
  }

  void search(String query) => emit(state.copyWith(query: query));
}
