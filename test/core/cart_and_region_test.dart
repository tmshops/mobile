import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/cart/cart_cubit.dart';
import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/cart/cart_repository.dart';
import 'package:tmshop/core/region/region.dart';
import 'package:tmshop/core/region/region_cubit.dart';
import 'package:tmshop/core/region/region_repository.dart';

class _MockRegionRepository extends Mock implements RegionRepository {}

void main() {
  const item = CartItem(
    productId: 'p1',
    skuId: 's1',
    title: 'Платье',
    imageUrl: 'u',
    price: 216,
    quantity: 1,
  );

  group('CartCubit with the Hive repository', () {
    late Directory dir;
    late Box<String> box;
    late CartRepositoryImpl repository;

    setUp(() async {
      dir = await Directory.systemTemp.createTemp('cart_test');
      Hive.init(dir.path);
      box = await Hive.openBox<String>('cart');
      repository = CartRepositoryImpl(box);
    });

    tearDown(() async {
      await Hive.close();
      await dir.delete(recursive: true);
    });

    test('the same product+variant adds up; a new comment replaces', () async {
      final cubit = CartCubit(repository);
      await cubit.add(item);
      await cubit.add(item.copyWith(quantity: 2, comment: 'проверьте цвет'));
      await cubit.add(item.copyWith(skuId: 's2'));

      expect(cubit.state.positions, 2);
      expect(cubit.state.items.first.quantity, 3);
      expect(cubit.state.items.first.comment, 'проверьте цвет');
      await cubit.close();
    });

    test('survives a restart', () async {
      final first = CartCubit(repository);
      await first.add(item.copyWith(comment: 'размер M'));
      await first.close();

      final second = CartCubit(repository);
      await second.load();
      expect(second.state.items, [item.copyWith(comment: 'размер M')]);
      await second.close();
    });

    test('a corrupt cart loads as a failure, not a crash', () async {
      await box.put('items', '{oops');
      expect((await repository.load()).isLeft(), isTrue);
    });
  });

  group('RegionCubit', () {
    late _MockRegionRepository repository;

    setUp(() {
      repository = _MockRegionRepository();
      when(() => repository.saveRegionId(any())).thenAnswer((_) async {});
    });

    test('defaults to Ashgabat until the customer picks', () {
      when(() => repository.savedRegionId).thenReturn(null);
      expect(RegionCubit(repository).state.selectedId, RegionCubit.defaultId);
    });

    blocTest<RegionCubit, RegionState>(
      'loads names and saves a new choice',
      setUp: () {
        when(() => repository.savedRegionId).thenReturn('ahal');
        when(() => repository.getRegions('tk')).thenAnswer(
          (_) async => right(const [Region(id: 'ahal', name: 'Ahal welaýaty')]),
        );
      },
      build: () => RegionCubit(repository),
      act: (cubit) async {
        await cubit.load('tk');
        await cubit.select('mary');
      },
      expect: () => const [
        RegionState(
          selectedId: 'ahal',
          regions: [Region(id: 'ahal', name: 'Ahal welaýaty')],
        ),
        RegionState(
          selectedId: 'mary',
          regions: [Region(id: 'ahal', name: 'Ahal welaýaty')],
        ),
      ],
      verify: (_) => verify(() => repository.saveRegionId('mary')).called(1),
    );
  });
}
