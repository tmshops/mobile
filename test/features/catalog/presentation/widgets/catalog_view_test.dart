import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/features/catalog/presentation/bloc/category_tree_bloc.dart';
import 'package:tmshop/features/catalog/presentation/widgets/catalog_skeleton.dart';
import 'package:tmshop/features/catalog/presentation/widgets/catalog_view.dart';

import '../../../../helpers/catalog_fixtures.dart';
import '../../../../helpers/pump_view.dart';

class _MockTreeBloc extends MockBloc<CategoryTreeEvent, CategoryTreeState>
    implements CategoryTreeBloc {}

void main() {
  late _MockTreeBloc bloc;
  late List<String> opened;

  setUp(() {
    bloc = _MockTreeBloc();
    opened = [];
  });

  Future<void> pump(
    WidgetTester tester,
    CategoryTreeState state, {
    Locale locale = AppLocales.ru,
    double textScale = 1,
    double width = 360,
    bool isOnline = true,
  }) async {
    when(() => bloc.state).thenReturn(state);
    await pumpView(
      tester,
      CatalogView(onOpenCategory: opened.add),
      providers: [BlocProvider<CategoryTreeBloc>.value(value: bloc)],
      locale: locale,
      textScale: textScale,
      width: width,
      isOnline: isOnline,
    );
  }

  testWidgets('loading shows the two-pane skeleton', (tester) async {
    await pump(tester, const CategoryTreeState.loading());
    expect(find.byType(CatalogSkeleton), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('offline without cache shows the offline state', (tester) async {
    await pump(
      tester,
      const CategoryTreeState.failure(NetworkFailure()),
      isOnline: false,
    );
    expect(find.text('Нет соединения'), findsOneWidget);
    await tester.tap(find.text('Повторить'));
    verify(() => bloc.add(const CategoryTreeEvent.refreshed())).called(1);
  });

  testWidgets('rail switches the right pane; cells open categories', (
    tester,
  ) async {
    await pump(tester, CategoryTreeState.loaded(tree: sampleTree('ru')));
    // First root is selected by default.
    expect(find.text('Женщинам'), findsOneWidget);

    await tester.tap(find.text('Электроника'));
    await tester.pump();
    expect(find.text('Аудио'), findsOneWidget);
    expect(find.text('Женщинам'), findsNothing);

    await tester.tap(find.text('Наушники'));
    expect(opened, ['el-audio-headphones']);

    await tester.tap(find.text('Все товары').first);
    expect(opened.last, 'electronics');
  });

  for (final width in [360.0, 412.0]) {
    testWidgets('every root fits in Turkmen at 1.3× on ${width.toInt()} dp', (
      tester,
    ) async {
      final tree = sampleTree('tk');
      await pump(
        tester,
        CategoryTreeState.loaded(tree: tree),
        locale: AppLocales.tk,
        textScale: 1.3,
        width: width,
      );
      for (final root in tree.roots) {
        await tester.dragUntilVisible(
          find.text(root.name).first,
          find.byType(ListView),
          const Offset(0, -80),
        );
        await tester.tap(find.text(root.name).first);
        await tester.pump();
        await scrollThrough(tester, find.byType(CustomScrollView), steps: 3);
      }
      await scrollThrough(tester, find.byType(ListView), steps: 3);
    });
  }
}
