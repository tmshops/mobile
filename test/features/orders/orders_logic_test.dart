import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/orders/domain/entities/order.dart';
import 'package:tmshop/features/orders/domain/entities/order_status.dart';
import 'package:tmshop/features/orders/domain/repositories/orders_repository.dart';
import 'package:tmshop/features/orders/domain/usecases/orders_use_cases.dart';
import 'package:tmshop/features/orders/presentation/bloc/order_cubit.dart';
import 'package:tmshop/features/orders/presentation/bloc/orders_cubit.dart';
import 'package:tmshop/features/orders/presentation/bloc/parcel_cubits.dart';

import '../../helpers/orders_fixtures.dart';

class _MockRepository extends Mock implements OrdersRepository {}

void main() {
  late _MockRepository repository;
  final at = DateTime(2026, 11, 12, 9);
  final active = sampleOrders('ru', OrderTab.active);
  final completed = sampleOrders('ru', OrderTab.completed);
  final order = sampleOrder('ru', '10228');
  final repeated = RepeatedOrder(lines: const [], unavailable: 1);

  setUpAll(() => registerFallbackValue(OrderTab.active));

  setUp(() {
    repository = _MockRepository();
    when(
      () => repository.orders(
        languageCode: any(named: 'languageCode'),
        tab: any(named: 'tab'),
      ),
    ).thenAnswer((invocation) async {
      final tab = invocation.namedArguments[#tab] as OrderTab;
      return right(
        Fetched(
          data: tab == OrderTab.active ? active : completed,
          fetchedAt: at,
        ),
      );
    });
    when(
      () => repository.repeat(
        languageCode: any(named: 'languageCode'),
        number: any(named: 'number'),
      ),
    ).thenAnswer((_) async => right(repeated));
  });

  group('OrdersCubit', () {
    OrdersCubit build() => OrdersCubit(
      GetOrdersUseCase(repository),
      RepeatOrderUseCase(repository),
    );

    blocTest<OrdersCubit, OrdersState>(
      'each tab loads the first time it is opened, then is kept',
      build: build,
      act: (cubit) async {
        await cubit.load('ru');
        await cubit.selectTab(OrderTab.completed);
        await cubit.selectTab(OrderTab.active);
        await cubit.selectTab(OrderTab.completed);
      },
      verify: (cubit) {
        expect(cubit.state.current.data, completed);
        expect(cubit.state.tabs[OrderTab.active]?.data, active);
        verify(
          () => repository.orders(languageCode: 'ru', tab: OrderTab.completed),
        ).called(1);
      },
    );

    blocTest<OrdersCubit, OrdersState>(
      'a failed refresh keeps the list on screen',
      build: build,
      act: (cubit) async {
        await cubit.load('ru');
        when(
          () => repository.orders(
            languageCode: any(named: 'languageCode'),
            tab: any(named: 'tab'),
          ),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        await cubit.refresh();
      },
      verify: (cubit) {
        expect(cubit.state.current.data, active);
        expect(cubit.state.current.failure, isA<NetworkFailure>());
        expect(cubit.state.current.isLoading, isFalse);
      },
    );

    blocTest<OrdersCubit, OrdersState>(
      '«Повторить» hands the lines to the screen',
      build: build,
      act: (cubit) async {
        await cubit.load('ru');
        await cubit.repeat('10219');
      },
      verify: (cubit) {
        expect(cubit.state.repeated, repeated);
        expect(cubit.state.repeating, isNull);
      },
    );
  });

  group('OrderCubit', () {
    OrderCubit build() => OrderCubit(
      GetOrderUseCase(repository),
      CancelOrderUseCase(repository),
      ResolveProblemUseCase(repository),
      RepeatOrderUseCase(repository),
    );

    void stubOrder({bool isFromCache = false}) =>
        when(
          () => repository.order(
            languageCode: any(named: 'languageCode'),
            number: any(named: 'number'),
          ),
        ).thenAnswer(
          (_) async => right(
            Fetched(data: order, fetchedAt: at, isFromCache: isFromCache),
          ),
        );

    When<Future<Either<Failure, OrderDetails>>> whenCancel() => when(
      () => repository.cancel(
        languageCode: any(named: 'languageCode'),
        number: any(named: 'number'),
        reasonId: any(named: 'reasonId'),
      ),
    );

    blocTest<OrderCubit, OrderState>(
      'cancel shows the server state afterwards',
      setUp: () {
        stubOrder();
        whenCancel().thenAnswer(
          (_) async => right(
            order.copyWith(
              status: const Status(
                code: StatusCode.cancelled,
                title: 'Отменён',
              ),
              canCancel: false,
            ),
          ),
        );
      },
      build: build,
      act: (cubit) async {
        await cubit.load(languageCode: 'ru', number: '10228');
        await cubit.cancel('changed_mind');
      },
      verify: (cubit) {
        expect(cubit.state.done, OrderAction.cancel);
        expect(cubit.state.busy, isNull);
        expect(cubit.state.order.data?.status.code, StatusCode.cancelled);
        verify(
          () => repository.cancel(
            languageCode: 'ru',
            number: '10228',
            reasonId: 'changed_mind',
          ),
        ).called(1);
      },
    );

    blocTest<OrderCubit, OrderState>(
      'a refused change keeps the order and reports why',
      setUp: () {
        stubOrder();
        whenCancel().thenAnswer(
          (_) async => left(const ServerFailure(message: 'Уже выкуплен')),
        );
      },
      build: build,
      act: (cubit) async {
        await cubit.load(languageCode: 'ru', number: '10228');
        await cubit.cancel('other');
      },
      verify: (cubit) {
        expect(cubit.state.order.data, order);
        expect(cubit.state.actionFailure, isA<ServerFailure>());
        expect(cubit.state.done, isNull);
      },
    );

    blocTest<OrderCubit, OrderState>(
      'the offline copy is view only',
      setUp: () => stubOrder(isFromCache: true),
      build: build,
      act: (cubit) async {
        await cubit.load(languageCode: 'ru', number: '10228');
        await cubit.cancel('other');
        await cubit.resolve(itemId: 'x', actionId: 'refund');
      },
      verify: (cubit) {
        expect(cubit.state.canChange, isFalse);
        verifyNever(
          () => repository.cancel(
            languageCode: any(named: 'languageCode'),
            number: any(named: 'number'),
            reasonId: any(named: 'reasonId'),
          ),
        );
      },
    );
  });

  group('ParcelCubit', () {
    final parcel = sampleParcel('ru', 'P-5525');
    final sent = sampleParcel('ru', 'P-5518');

    blocTest<ParcelCubit, ParcelState>(
      '«Отправить сейчас» shows the parcel the server returns',
      setUp: () {
        when(
          () => repository.parcel(
            languageCode: any(named: 'languageCode'),
            number: any(named: 'number'),
          ),
        ).thenAnswer((_) async => right(Fetched(data: parcel, fetchedAt: at)));
        when(
          () => repository.sendNow(
            languageCode: any(named: 'languageCode'),
            number: any(named: 'number'),
          ),
        ).thenAnswer((_) async => right(sent));
      },
      build: () => ParcelCubit(
        GetParcelUseCase(repository),
        SendParcelNowUseCase(repository),
      ),
      act: (cubit) async {
        await cubit.load(languageCode: 'ru', number: 'P-5525');
        await cubit.sendNow();
      },
      verify: (cubit) {
        expect(cubit.state.wasSent, isTrue);
        expect(cubit.state.parcel.data, sent);
      },
    );
  });
}
