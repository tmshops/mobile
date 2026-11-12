import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/cart/cart_cubit.dart';
import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/cart/cart_repository.dart';
import 'package:tmshop/core/dev/fake_backend/fake_cart_backend.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/cart/data/models/cart_mappers.dart';
import 'package:tmshop/features/cart/data/models/cart_models.dart';
import 'package:tmshop/features/cart/domain/repositories/cart_quote_repository.dart';
import 'package:tmshop/features/cart/domain/usecases/get_cart_quote_use_case.dart';
import 'package:tmshop/features/cart/presentation/bloc/cart_quote_bloc.dart';

import '../../helpers/cart_fixtures.dart';

class _MockCartRepository extends Mock implements CartRepository {}

class _MockQuoteRepository extends Mock implements CartQuoteRepository {}

class _MockGetQuote extends Mock implements GetCartQuoteUseCase {}

void main() {
  final lines = sampleCart('ru');

  setUpAll(() => registerFallbackValue(<CartItem>[]));

  group('CartCubit', () {
    late _MockCartRepository repository;
    late CartCubit cubit;

    setUp(() {
      repository = _MockCartRepository();
      when(() => repository.save(any())).thenAnswer((_) async => right(unit));
      cubit = CartCubit(repository);
    });

    tearDown(() => cubit.close());

    Future<void> fill() async {
      for (final line in lines) {
        await cubit.add(line);
      }
    }

    test('quantity never drops below one', () async {
      await fill();
      await cubit.setQuantity(lines.first.key, 0);
      expect(cubit.state.items.first.quantity, 1);
    });

    test('remove then restore puts the line back in place', () async {
      await fill();
      final second = cubit.state.items[1];
      final index = await cubit.remove(second.key);
      expect(cubit.state.positions, 2);
      await cubit.restore(second, index);
      expect(cubit.state.items[1], second);
    });

    test('ticking a seller touches only their lines', () async {
      await fill();
      final dresses = {lines[0].key, lines[1].key};
      await cubit.setSelectedMany(isSelected: false, keys: dresses);
      expect(cubit.state.selected.map((l) => l.key), [lines[2].key]);
      await cubit.setSelectedMany(isSelected: true);
      expect(cubit.state.isAllSelected, isTrue);
    });

    test(
      'changing to a variant already in the cart merges the lines',
      () async {
        final a = lines.first;
        final b = a.copyWith(skuId: 'other', skuLabel: 'Другой', quantity: 3);
        await cubit.add(a);
        await cubit.add(b);
        await cubit.changeVariant(
          b.key,
          skuId: a.skuId!,
          skuLabel: a.skuLabel,
          price: a.price,
          imageUrl: a.imageUrl,
        );
        expect(cubit.state.positions, 1);
        expect(cubit.state.items.single.quantity, a.quantity + 3);
      },
    );
  });

  group('CartQuoteBloc', () {
    late _MockGetQuote getQuote;
    final quote = sampleQuote('ru', lines);

    setUp(() {
      getQuote = _MockGetQuote();
      when(
        () => getQuote(
          languageCode: any(named: 'languageCode'),
          lines: any(named: 'lines'),
          regionId: any(named: 'regionId'),
          promoCode: any(named: 'promoCode'),
        ),
      ).thenAnswer((inv) async {
        final sent = inv.namedArguments[#lines] as List<CartItem>;
        final promo = inv.namedArguments[#promoCode] as String?;
        return right(
          CartQuoteModel.fromJson(
            FakeCartBackend().quote(
              'ru',
              CartQuoteRequest.body(
                lines: sent,
                regionId: 'ashgabat',
                promoCode: promo,
              ),
            ),
          ).toEntity(),
        );
      });
    });

    CartQuoteBloc build() => CartQuoteBloc(getQuote);

    const start = CartQuoteEvent.started(
      languageCode: 'ru',
      regionId: 'ashgabat',
      lines: [],
    );

    blocTest<CartQuoteBloc, CartQuoteState>(
      'quotes at once on start',
      build: build,
      act: (bloc) => bloc.add(
        CartQuoteEvent.started(
          languageCode: 'ru',
          regionId: 'ashgabat',
          lines: lines,
        ),
      ),
      expect: () => [
        const CartQuoteState(isLoading: true),
        CartQuoteState(quote: quote),
      ],
    );

    blocTest<CartQuoteBloc, CartQuoteState>(
      'a burst of changes sends one request',
      build: build,
      act: (bloc) async {
        bloc.add(start);
        await Future<void>.delayed(Duration.zero);
        for (var q = 2; q <= 5; q++) {
          bloc.add(
            CartQuoteEvent.linesChanged([
              lines.first.copyWith(quantity: q),
              ...lines.skip(1),
            ]),
          );
        }
      },
      wait: CartQuoteBloc.debounce * 2,
      verify: (bloc) {
        verify(
          () => getQuote(
            languageCode: 'ru',
            lines: any(named: 'lines'),
            regionId: 'ashgabat',
          ),
        ).called(1);
        expect(bloc.state.isLoading, isFalse);
      },
    );

    blocTest<CartQuoteBloc, CartQuoteState>(
      'a rejected promo shows the server text and is not resent',
      build: build,
      act: (bloc) async {
        bloc.add(
          CartQuoteEvent.started(
            languageCode: 'ru',
            regionId: 'ashgabat',
            lines: lines,
          ),
        );
        await Future<void>.delayed(Duration.zero);
        bloc.add(const CartQuoteEvent.promoApplied(' nope '));
      },
      wait: CartQuoteBloc.debounce,
      verify: (bloc) {
        expect(bloc.state.promoError, 'Промокод не найден');
        expect(bloc.state.promoCode, isNull);
      },
    );

    blocTest<CartQuoteBloc, CartQuoteState>(
      'a failure keeps the last totals',
      build: build,
      seed: () => CartQuoteState(quote: quote),
      act: (bloc) async {
        when(
          () => getQuote(
            languageCode: any(named: 'languageCode'),
            lines: any(named: 'lines'),
            regionId: any(named: 'regionId'),
            promoCode: any(named: 'promoCode'),
          ),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        bloc.add(
          CartQuoteEvent.started(
            languageCode: 'ru',
            regionId: 'ashgabat',
            lines: lines,
          ),
        );
      },
      verify: (bloc) {
        expect(bloc.state.quote, quote);
        expect(bloc.state.failure, isA<NetworkFailure>());
      },
    );

    blocTest<CartQuoteBloc, CartQuoteState>(
      'an empty cart needs no request',
      build: build,
      act: (bloc) => bloc.add(start),
      expect: () => const [CartQuoteState()],
      verify: (_) => verifyNever(
        () => getQuote(
          languageCode: any(named: 'languageCode'),
          lines: any(named: 'lines'),
          regionId: any(named: 'regionId'),
        ),
      ),
    );
  });

  test('use cases pass everything through', () async {
    final repository = _MockQuoteRepository();
    final quote = sampleQuote('ru', lines);
    when(
      () => repository.quote(
        languageCode: 'ru',
        lines: lines,
        regionId: 'mary',
        promoCode: 'X',
      ),
    ).thenAnswer((_) async => right(quote));

    expect(
      await GetCartQuoteUseCase(repository)(
        languageCode: 'ru',
        lines: lines,
        regionId: 'mary',
        promoCode: 'X',
      ),
      right(quote),
    );
  });
}
