import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_cart_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/product/data/variants_model.dart';
import 'package:tmshop/core/product/data/variants_repository_impl.dart';
import 'package:tmshop/core/product/domain/product_variants.dart';
import 'package:tmshop/core/product/presentation/variant_picker_cubit.dart';

class _MockRemote extends Mock implements VariantsRemoteDataSource {}

class _MockRepository extends Mock implements VariantsRepository {}

void main() {
  const productId = 'clothes-women-dresses-1';
  final variants = VariantsModel.fromJson(
    FakeCartBackend().variants('ru', productId)!,
  ).toEntity();

  test('variants come with today\'s prices', () {
    expect(variants.properties.map((p) => p.id), ['color', 'size']);
    expect(variants.skus, isNotEmpty);
  });

  group('VariantsRepositoryImpl', () {
    late _MockRemote remote;
    late VariantsRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = VariantsRepositoryImpl(remote);
    });

    test('unknown product is Right(null)', () async {
      when(() => remote.get('ru', 'gone')).thenAnswer((_) async => null);
      final gone = await repository.get(languageCode: 'ru', productId: 'gone');
      expect(gone.getOrElse((_) => throw StateError('left')), isNull);
    });

    test('offline is NetworkFailure', () async {
      when(() => remote.get(any(), any())).thenThrow(const NetworkException());
      final result = await repository.get(languageCode: 'ru', productId: 'x');
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  group('VariantPickerCubit', () {
    late _MockRepository repository;
    final current = variants.skus.last;

    setUp(() {
      repository = _MockRepository();
      when(
        () => repository.get(languageCode: 'ru', productId: productId),
      ).thenAnswer((_) async => right(variants));
      when(
        () => repository.get(languageCode: 'ru', productId: 'gone'),
      ).thenAnswer((_) async => right(null));
    });

    test('starts from the current variant', () async {
      final cubit = VariantPickerCubit(repository);
      await cubit.load(
        languageCode: 'ru',
        productId: productId,
        currentSkuId: current.id,
      );
      final state = cubit.state as VariantPickerReady;
      expect(state.selection.sku?.id, current.id);
      await cubit.close();
    });

    test('without a current variant nothing is chosen', () async {
      final cubit = VariantPickerCubit(repository);
      await cubit.load(languageCode: 'ru', productId: productId);
      expect((cubit.state as VariantPickerReady).chosen, isEmpty);
      await cubit.close();
    });

    test('a product taken off sale ends in failure without an error', () async {
      final cubit = VariantPickerCubit(repository);
      await cubit.load(languageCode: 'ru', productId: 'gone');
      expect(cubit.state, const VariantPickerState.failure());
      await cubit.close();
    });
  });
}
