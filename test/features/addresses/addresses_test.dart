import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_address_backend.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/features/addresses/data/datasources/address_remote_data_source.dart';
import 'package:tmshop/features/addresses/data/repositories/address_repository_impl.dart';
import 'package:tmshop/features/addresses/domain/entities/delivery_address.dart';
import 'package:tmshop/features/addresses/domain/repositories/address_repository.dart';
import 'package:tmshop/features/addresses/presentation/bloc/address_editor_cubit.dart';
import 'package:tmshop/features/addresses/presentation/bloc/addresses_cubit.dart';
import 'package:tmshop/features/addresses/presentation/widgets/address_editor_view.dart';
import 'package:tmshop/features/addresses/presentation/widgets/addresses_view.dart';

import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements AddressRemoteDataSource {}

class _MockRepository extends Mock implements AddressRepository {}

class _MockAddressesCubit extends MockCubit<AddressesState>
    implements AddressesCubit {}

class _MockEditorCubit extends MockCubit<AddressEditorState>
    implements AddressEditorCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  const point = GeoPoint(lat: 37.95, lng: 58.38);
  const home = DeliveryAddress(
    id: 'a1',
    point: point,
    address: 'ул. Андалиба, 12',
    region: 'Ашхабад',
    details: 'кв. 14',
    isDefault: true,
  );
  const office = DeliveryAddress(
    id: 'a2',
    point: point,
    address: 'ул. Азади, 5',
    region: 'Ашхабад',
  );

  setUpAll(() {
    registerFallbackValue(point);
    registerFallbackValue(const AddressDraft(point: point));
  });

  group('FakeAddressBackend', () {
    test('the default address comes first', () {
      final backend = FakeAddressBackend();
      final list = backend.list('ru')['addresses'] as List<dynamic>;
      expect((list.first as Map)['is_default'], isTrue);
      final last = (list.last as Map)['id'] as String;
      backend.setDefault(last);
      expect(
        ((backend.list('ru')['addresses'] as List).first as Map)['id'],
        last,
      );
    });

    test('moving the point changes the address; far away is outside', () {
      final backend = FakeAddressBackend();
      final a = backend.reverse('ru', 37.95, 58.38)['address'];
      final b = backend.reverse('ru', 37.96, 58.39)['address'];
      expect(a, isNot(b));
      expect(backend.reverse('ru', 39, 60)['region'], 'Ахалский велаят');
    });

    test('deleting the default one makes another the default', () {
      final backend = FakeAddressBackend();
      final first =
          ((backend.list('ru')['addresses'] as List).first as Map)['id']
              as String;
      backend.delete(first);
      final list = backend.list('ru')['addresses'] as List<dynamic>;
      expect(list, hasLength(1));
      expect((list.single as Map)['is_default'], isTrue);
    });
  });

  group('AddressRepositoryImpl', () {
    test('parses the list', () async {
      final remote = _MockRemote();
      when(() => remote.list(any())).thenAnswer(
        (_) async => {
          'addresses': [
            {
              'id': 'a1',
              'lat': 37.95,
              'lng': 58.38,
              'address': 'ул. Андалиба, 12',
              'region': 'Ашхабад',
              'details': 'кв. 14',
              'is_default': true,
            },
          ],
        },
      );
      final repository = AddressRepositoryImpl(
        remote,
        const FakeDeviceLocationSource(),
      );
      final list = (await repository.addresses(
        'ru',
      )).getOrElse((_) => const []);
      expect(list.single, home);
    });
  });

  group('AddressesCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(
        () => repository.addresses(any()),
      ).thenAnswer((_) async => right(const [home, office]));
    });

    blocTest<AddressesCubit, AddressesState>(
      'a failed delete puts the address back',
      build: () => AddressesCubit(repository),
      setUp: () => when(
        () => repository.delete(any()),
      ).thenAnswer((_) async => left(const NetworkFailure())),
      act: (cubit) async {
        await cubit.load('ru');
        await cubit.delete('a2');
      },
      verify: (cubit) {
        expect(cubit.state.addresses, [home, office]);
        expect(cubit.state.actionFailure, isA<NetworkFailure>());
      },
    );

    blocTest<AddressesCubit, AddressesState>(
      '«Сделать основным» moves the badge at once',
      build: () => AddressesCubit(repository),
      setUp: () => when(
        () => repository.setDefault(any()),
      ).thenAnswer((_) async => right(unit)),
      act: (cubit) async {
        await cubit.load('ru');
        when(() => repository.addresses(any())).thenAnswer(
          (_) async => right([
            office.copyWith(isDefault: true),
            home.copyWith(isDefault: false),
          ]),
        );
        await cubit.setDefault('a2');
      },
      verify: (cubit) => expect(cubit.state.addresses.first.id, 'a2'),
    );
  });

  group('AddressEditorCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(repository.deviceLocation).thenAnswer((_) async => right(point));
      when(() => repository.placeAt(any(), any())).thenAnswer(
        (_) async => right(
          const PlaceInfo(address: 'ул. Андалиба, 12', region: 'Ашхабад'),
        ),
      );
    });

    blocTest<AddressEditorCubit, AddressEditorState>(
      'starts at my location and looks the address up',
      build: () => AddressEditorCubit(repository, settle: Duration.zero),
      act: (cubit) => cubit.start('ru'),
      verify: (cubit) {
        expect(cubit.state.center, point);
        expect(cubit.state.place?.address, 'ул. Андалиба, 12');
        expect(cubit.state.canSave, isTrue);
      },
    );

    blocTest<AddressEditorCubit, AddressEditorState>(
      'moving clears the address until the map stops',
      build: () => AddressEditorCubit(repository, settle: Duration.zero),
      seed: () => const AddressEditorState(
        center: point,
        place: PlaceInfo(address: 'x', region: 'y'),
      ),
      act: (cubit) async {
        cubit.moved(const GeoPoint(lat: 37.96, lng: 58.39));
        expect(cubit.state.isLocating, isTrue);
        expect(cubit.state.canSave, isFalse);
        await Future<void>.delayed(Duration.zero);
        await Future<void>.delayed(Duration.zero);
      },
      verify: (cubit) => expect(cubit.state.place, isNotNull),
    );

    blocTest<AddressEditorCubit, AddressEditorState>(
      'saves the draft of an existing address',
      build: () => AddressEditorCubit(repository, settle: Duration.zero),
      setUp: () => when(
        () => repository.save(any(), any()),
      ).thenAnswer((_) async => right(home)),
      act: (cubit) async {
        await cubit.start('ru', existing: home);
        cubit.detailsChanged('кв. 15');
        await cubit.save();
      },
      verify: (cubit) {
        expect(cubit.state.saved, home);
        final draft =
            verify(() => repository.save('ru', captureAny())).captured.single
                as AddressDraft;
        expect(draft.id, 'a1');
        expect(draft.details, 'кв. 15');
      },
    );
  });

  group('views', () {
    testWidgets('list: default badge and «Добавить адрес»', (tester) async {
      final cubit = _MockAddressesCubit();
      when(() => cubit.state).thenReturn(
        const AddressesState(isLoading: false, addresses: [home, office]),
      );
      var added = 0;
      await pumpView(
        tester,
        AddressesView(
          onReload: () async {},
          onAdd: () => added++,
          onEdit: (_) {},
        ),
        providers: [BlocProvider<AddressesCubit>.value(value: cubit)],
      );
      expect(find.text(ru.addressesDefault), findsOneWidget);
      expect(find.text('кв. 14'), findsOneWidget);
      await tester.tap(find.text(ru.addressesAdd));
      expect(added, 1);
    });

    testWidgets('editor: address under the pin, save enabled', (tester) async {
      final cubit = _MockEditorCubit();
      when(() => cubit.state).thenReturn(
        const AddressEditorState(
          center: point,
          place: PlaceInfo(address: 'ул. Андалиба, 12', region: 'Ашхабад'),
        ),
      );
      when(cubit.save).thenAnswer((_) async {});
      await pumpView(
        tester,
        AddressEditorView(isNew: true, initialDetails: '', onSaved: (_) {}),
        providers: [BlocProvider<AddressEditorCubit>.value(value: cubit)],
      );
      expect(find.text(ru.addressNewTitle), findsOneWidget);
      expect(find.text('ул. Андалиба, 12'), findsOneWidget);
      expect(find.text(ru.addressRegion('Ашхабад')), findsOneWidget);
      await tester.tap(find.text(ru.addressSave));
      verify(cubit.save).called(1);
    });

    testWidgets('editor: while looking up, saving waits', (tester) async {
      final cubit = _MockEditorCubit();
      when(
        () => cubit.state,
      ).thenReturn(const AddressEditorState(center: point));
      await pumpView(
        tester,
        AddressEditorView(isNew: true, initialDetails: '', onSaved: (_) {}),
        providers: [BlocProvider<AddressEditorCubit>.value(value: cubit)],
      );
      expect(find.text(ru.addressLocating), findsOneWidget);
      await tester.tap(find.text(ru.addressSave));
      verifyNever(cubit.save);
    });
  });
}
