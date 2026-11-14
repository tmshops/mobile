import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/app/router/app_router.dart';
import 'package:tmshop/app/router/app_routes.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/features/photo_search/domain/entities/photo_search.dart';
import 'package:tmshop/features/photo_search/domain/repositories/photo_search_repository.dart';
import 'package:tmshop/features/photo_search/presentation/bloc/photo_camera_cubit.dart';
import 'package:tmshop/features/photo_search/presentation/bloc/photo_search_cubit.dart';
import 'package:tmshop/features/photo_search/presentation/widgets/photo_camera_view.dart';

import '../../helpers/mock_blocs.dart';

class _MockRepository extends Mock implements PhotoSearchRepository {}

const _photo = 'https://example.com/sneakers.webp';

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  late _MockRepository repository;
  late GoRouter router;

  setUpAll(() => registerFallbackValue(const PhotoQuery(imageUrl: '')));

  setUp(() {
    repository = _MockRepository();
    when(
      repository.devicePhotos,
    ).thenAnswer((_) async => right(const [_photo]));
    when(
      () => repository.search(
        any(),
        any(),
        onUploadProgress: any(named: 'onUploadProgress'),
      ),
    ).thenAnswer(
      (_) async => right(const [
        PhotoMatch(
          product: ProductSummary(
            id: 'shoes-men-sneakers-1',
            title: 'Кроссовки Anta',
            imageUrl: '',
            price: 640,
          ),
          similarity: 0.95,
        ),
      ]),
    );
    getIt
      ..registerFactory(() => PhotoCameraCubit(repository))
      ..registerFactory(() => PhotoSearchCubit(repository));
  });

  tearDown(getIt.reset);

  Future<void> frames(WidgetTester tester) async {
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
  }

  testWidgets('camera → crop → results, and back to the camera', (
    tester,
  ) async {
    final cubits = GlobalCubits();
    router = createAppRouter(
      auth: cubits.auth,
      initialLocation: AppRoutes.photoSearch,
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: cubits.providers,
        child: MaterialApp.router(
          theme: AppTheme.light(),
          locale: AppLocales.ru,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          routerConfig: router,
        ),
      ),
    );
    await frames(tester);
    expect(find.byType(PhotoCameraView), findsOneWidget);

    await tester.tap(find.bySemanticsLabel(ru.photoCameraShutter));
    await frames(tester);
    expect(find.text(ru.photoCropTitle), findsOneWidget);

    await tester.tap(find.text(ru.productFindSimilar));
    await frames(tester);
    await frames(tester);
    expect(find.text(ru.photoResultsTitle), findsOneWidget);
    expect(find.text('Кроссовки Anta'), findsOneWidget);
    final query =
        verify(
              () => repository.search(
                'ru',
                captureAny(),
                onUploadProgress: any(named: 'onUploadProgress'),
              ),
            ).captured.single
            as PhotoQuery;
    expect(query.imageUrl, _photo);
    expect(query.crop, isNotNull);

    await tester.tap(find.byTooltip(ru.photoAnotherPhoto));
    await frames(tester);
    expect(find.byType(PhotoCameraView), findsOneWidget);
  });
}
