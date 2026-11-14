import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_photo_search_backend.dart';
import 'package:tmshop/core/dev/fake_image_url.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/features/photo_search/data/datasources/photo_search_remote_data_source.dart';
import 'package:tmshop/features/photo_search/data/repositories/photo_search_repository_impl.dart';
import 'package:tmshop/features/photo_search/domain/entities/photo_search.dart';
import 'package:tmshop/features/photo_search/domain/repositories/photo_search_repository.dart';
import 'package:tmshop/features/photo_search/presentation/bloc/photo_camera_cubit.dart';
import 'package:tmshop/features/photo_search/presentation/bloc/photo_search_cubit.dart';
import 'package:tmshop/features/photo_search/presentation/widgets/crop_frame.dart';
import 'package:tmshop/features/photo_search/presentation/widgets/photo_camera_view.dart';
import 'package:tmshop/features/photo_search/presentation/widgets/photo_crop_view.dart';
import 'package:tmshop/features/photo_search/presentation/widgets/photo_results_view.dart';

import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements PhotoSearchRemoteDataSource {}

class _MockRepository extends Mock implements PhotoSearchRepository {}

class _MockSearchCubit extends MockCubit<PhotoSearchState>
    implements PhotoSearchCubit {}

class _MockCameraCubit extends MockCubit<List<String>>
    implements PhotoCameraCubit {}

final _sneakers = fakePhotoUrl('mens-shoes/nike-air-jordan-1-red-and-black');
final _sofa = fakePhotoUrl('furniture/annibale-colombo-sofa');

const _product = ProductSummary(
  id: 'shoes-men-sneakers-3',
  title: 'Кроссовки Anta, модель K13',
  imageUrl: '',
  price: 640,
);

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);

  setUpAll(() => registerFallbackValue(const PhotoQuery(imageUrl: '')));

  group('FakePhotoSearchBackend', () {
    final backend = FakePhotoSearchBackend();

    List<Map<String, dynamic>> items(Map<String, dynamic> json) =>
        (json['items'] as List<dynamic>).cast<Map<String, dynamic>>();

    test('a photo of sneakers finds sneakers, most similar first', () {
      final found = items(backend.search('ru', imageUrl: _sneakers));
      expect(found, isNotEmpty);
      expect(
        found.every(
          (i) => (i['id'] as String).startsWith('shoes-men-sneakers'),
        ),
        isTrue,
      );
      final scores = [for (final i in found) i['similarity'] as double];
      expect(scores, [...scores]..sort((a, b) => b.compareTo(a)));
    });

    test('the sofa finds nothing', () {
      expect(items(backend.search('ru', imageUrl: _sofa)), isEmpty);
    });

    test('«Найти похожие» finds its siblings, not itself', () {
      final found = items(backend.search('ru', productId: _product.id));
      expect(found, isNotEmpty);
      expect(found.map((i) => i['id']), isNot(contains(_product.id)));
    });

    test('the gallery holds photos of things', () {
      expect(backend.photos(), contains(_sneakers));
    });

    test('generated products look like their category', () {
      expect(
        fakeProductImageUrl('shoes-men-sneakers', 'x'),
        contains('/mens-shoes/'),
      );
    });
  });

  group('PhotoSearchRepositoryImpl', () {
    late _MockRemote remote;
    late PhotoSearchRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = PhotoSearchRepositoryImpl(remote);
    });

    void answer(Map<String, dynamic> json) => when(
      () => remote.search(
        any(),
        imageUrl: any(named: 'imageUrl'),
        productId: any(named: 'productId'),
        crop: any(named: 'crop'),
        onUploadProgress: any(named: 'onUploadProgress'),
      ),
    ).thenAnswer((_) async => json);

    test('maps matches and sends the crop', () async {
      answer({
        'items': [
          {
            'id': 'p1',
            'title': 'Кроссовки',
            'image_url': 'u',
            'price': 100,
            'similarity': 0.93,
          },
        ],
      });
      final result = await repository.search(
        'ru',
        const PhotoQuery(
          imageUrl: 'photo',
          crop: PhotoCrop(left: 0.1, top: 0.2, width: 0.5, height: 0.6),
        ),
        onUploadProgress: (_) {},
      );
      final matches = result.getOrElse((_) => fail('$result'));
      expect(matches.single.product.id, 'p1');
      expect(matches.single.similarity, 0.93);
      final captured = verify(
        () => remote.search(
          'ru',
          imageUrl: 'photo',
          productId: null,
          crop: captureAny(named: 'crop'),
          onUploadProgress: captureAny(named: 'onUploadProgress'),
        ),
      ).captured;
      expect(captured[0], [0.1, 0.2, 0.5, 0.6]);
      expect(captured[1], isNotNull);
    });

    test('«Найти похожие» uploads nothing', () async {
      answer({'items': <Object>[]});
      await repository.search(
        'ru',
        const PhotoQuery(imageUrl: 'photo', productId: 'p1'),
        onUploadProgress: (_) {},
      );
      verify(
        () => remote.search(
          'ru',
          imageUrl: 'photo',
          productId: 'p1',
          onUploadProgress: null,
        ),
      ).called(1);
    });

    test('offline is a network failure', () async {
      when(
        () => remote.search(
          any(),
          imageUrl: any(named: 'imageUrl'),
          productId: any(named: 'productId'),
          crop: any(named: 'crop'),
          onUploadProgress: any(named: 'onUploadProgress'),
        ),
      ).thenThrow(const NetworkException());
      final result = await repository.search(
        'ru',
        const PhotoQuery(imageUrl: 'photo'),
      );
      expect(result, left<Failure, List<PhotoMatch>>(const NetworkFailure()));
    });

    test('a broken answer is a server failure', () async {
      answer({'items': 'nope'});
      final result = await repository.search(
        'ru',
        const PhotoQuery(imageUrl: 'photo'),
      );
      expect(result.getLeft().toNullable(), isA<ServerFailure>());
    });
  });

  group('PhotoSearchCubit', () {
    late _MockRepository repository;
    const match = PhotoMatch(product: _product, similarity: 0.9);

    setUp(() => repository = _MockRepository());

    blocTest<PhotoSearchCubit, PhotoSearchState>(
      'upload progress, then searching, then the matches',
      build: () {
        when(
          () => repository.search(
            any(),
            any(),
            onUploadProgress: any(named: 'onUploadProgress'),
          ),
        ).thenAnswer((invocation) async {
          final progress =
              invocation.namedArguments[#onUploadProgress]
                  as void Function(double);
          progress(0.5);
          progress(1);
          return right(const [match]);
        });
        return PhotoSearchCubit(repository);
      },
      act: (cubit) => cubit.search('ru', const PhotoQuery(imageUrl: 'photo')),
      expect: () => const [
        PhotoSearchState(),
        PhotoSearchState(uploadProgress: 0.5),
        PhotoSearchState(
          status: PhotoSearchStatus.searching,
          uploadProgress: 1,
        ),
        PhotoSearchState(status: PhotoSearchStatus.done, matches: [match]),
      ],
    );

    blocTest<PhotoSearchCubit, PhotoSearchState>(
      '«Найти похожие» starts at searching; a failure is kept',
      build: () {
        when(
          () => repository.search(
            any(),
            any(),
            onUploadProgress: any(named: 'onUploadProgress'),
          ),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        return PhotoSearchCubit(repository);
      },
      act: (cubit) => cubit.search(
        'ru',
        const PhotoQuery(imageUrl: 'photo', productId: 'p1'),
      ),
      expect: () => const [
        PhotoSearchState(status: PhotoSearchStatus.searching),
        PhotoSearchState(
          status: PhotoSearchStatus.failure,
          failure: NetworkFailure(),
        ),
      ],
    );
  });

  group('PhotoCameraCubit', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    blocTest<PhotoCameraCubit, List<String>>(
      'loads the device photos',
      build: () {
        when(
          repository.devicePhotos,
        ).thenAnswer((_) async => right(const ['a', 'b']));
        return PhotoCameraCubit(repository);
      },
      act: (cubit) => cubit.load(),
      expect: () => const [
        ['a', 'b'],
      ],
    );
  });

  group('crop frame', () {
    const crop = PhotoCrop(left: 0.1, top: 0.1, width: 0.8, height: 0.8);

    test('moving stays inside the photo', () {
      expect(
        crop.moved(0.5, -0.5),
        isA<PhotoCrop>()
            .having((c) => c.left, "left", closeTo(0.2, 1e-9))
            .having((c) => c.top, "top", 0),
      );
    });

    test('resizing keeps the opposite corner and a minimum size', () {
      final r = crop.resized(CropCorner.topLeft, 0.3, 0.3);
      expect(r.left + r.width, closeTo(0.9, 1e-9));
      expect(r.top + r.height, closeTo(0.9, 1e-9));
      final tiny = crop.resized(CropCorner.bottomRight, -1, -1);
      expect(tiny.width, closeTo(PhotoCropEditX.minSide, 1e-9));
      expect(tiny.left, 0.1);
    });
  });

  group('PhotoCameraView', () {
    late _MockCameraCubit cubit;
    late List<String> photos;

    setUp(() {
      cubit = _MockCameraCubit();
      photos = [];
      when(() => cubit.state).thenReturn([_sneakers, _sofa]);
    });

    Future<void> pump(WidgetTester tester) => pumpView(
      tester,
      PhotoCameraView(onClose: () {}, onPhoto: photos.add),
      providers: [BlocProvider<PhotoCameraCubit>.value(value: cubit)],
    );

    testWidgets('the shutter takes what the viewfinder sees', (tester) async {
      await pump(tester);
      expect(find.text(ru.photoCameraTip), findsOneWidget);
      await tester.tap(find.bySemanticsLabel(ru.photoCameraShutter));
      await settle(tester);
      expect(photos, [_sneakers]);

      await tester.tap(find.byTooltip(ru.photoCameraSwitch));
      await settle(tester);
      await tester.tap(find.bySemanticsLabel(ru.photoCameraShutter));
      await settle(tester);
      expect(photos, [_sneakers, _sofa]);
    });

    testWidgets('a photo can be picked from the gallery', (tester) async {
      await pump(tester);
      await tester.tap(find.bySemanticsLabel(ru.photoCameraGallery));
      await settle(tester);
      expect(find.text(ru.photoGalleryTitle), findsOneWidget);
      await tester.tap(find.byType(InkWell).last);
      await settle(tester);
      expect(photos, [_sofa]);
    });
  });

  testWidgets('crop: the frame moves and the search gets it', (tester) async {
    final crops = <PhotoCrop>[];
    await pumpView(
      tester,
      PhotoCropView(imageUrl: _sneakers, onSearch: crops.add),
    );
    await tester.drag(
      find.byKey(const ValueKey(CropCorner.bottomRight)),
      const Offset(-60, -60),
    );
    await tester.pump();
    await tester.tap(find.text(ru.productFindSimilar));
    expect(crops.single.left, PhotoCropView.initialCrop.left);
    expect(crops.single.width, lessThan(PhotoCropView.initialCrop.width));
  });

  group('PhotoResultsView', () {
    late _MockSearchCubit cubit;
    late List<ProductSummary> opened;
    late int findForMe;

    setUp(() {
      cubit = _MockSearchCubit();
      opened = [];
      findForMe = 0;
    });

    Future<void> pump(WidgetTester tester, PhotoSearchState state) {
      when(() => cubit.state).thenReturn(state);
      return pumpView(
        tester,
        PhotoResultsView(
          query: PhotoQuery(imageUrl: _sneakers),
          onRetry: () {},
          onOpenProduct: opened.add,
          onAnotherPhoto: () {},
          onFindForMe: () => findForMe++,
        ),
        providers: [BlocProvider<PhotoSearchCubit>.value(value: cubit)],
      );
    }

    testWidgets('upload shows its percent', (tester) async {
      await pump(tester, const PhotoSearchState(uploadProgress: 0.4));
      expect(find.text(ru.photoUploading(40)), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('matches show their similarity and open', (tester) async {
      await pump(
        tester,
        const PhotoSearchState(
          status: PhotoSearchStatus.done,
          matches: [PhotoMatch(product: _product, similarity: 0.934)],
        ),
      );
      expect(find.text(ru.photoResultsTitle), findsOneWidget);
      expect(find.text(ru.photoResultsCount(1)), findsOneWidget);
      expect(find.text(ru.photoSimilarity(93)), findsOneWidget);
      await tester.tap(find.text(_product.title));
      expect(opened, [_product]);
    });

    testWidgets('nothing found offers «Найдите мне товар»', (tester) async {
      await pump(
        tester,
        const PhotoSearchState(status: PhotoSearchStatus.done),
      );
      expect(find.text(ru.photoEmptyTitle), findsOneWidget);
      await tester.tap(find.text(ru.photoFindForMe));
      expect(findForMe, 1);
    });
  });
}

/// Runs animations to the end; the image shimmer never stops, so
/// `pumpAndSettle` cannot be used.
Future<void> settle(WidgetTester tester) async {
  for (var i = 0; i < 10; i++) {
    await tester.pump(const Duration(milliseconds: 100));
  }
}
