import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';
import 'package:tmshop/features/catalog/presentation/bloc/filters_bloc.dart';
import 'package:tmshop/features/catalog/presentation/widgets/filters/filters_sheet.dart';

import '../../../../helpers/catalog_fixtures.dart';
import '../../../../helpers/pump_view.dart';

class _MockFiltersBloc extends MockBloc<FiltersEvent, FiltersState>
    implements FiltersBloc {}

void main() {
  late _MockFiltersBloc bloc;

  setUpAll(
    () => registerFallbackValue(const FiltersEvent.changed(AppliedFilters())),
  );

  setUp(() => bloc = _MockFiltersBloc());

  FiltersState counted(
    String lang, {
    AppliedFilters draft = const AppliedFilters(),
  }) {
    final facets = sampleFacets(lang, 'clothes', draft);
    return FiltersState(
      draft: draft,
      facets: facets.facets,
      total: facets.total,
      isCounting: false,
    );
  }

  Future<void> pump(
    WidgetTester tester,
    FiltersState state, {
    Locale locale = AppLocales.ru,
    double textScale = 1,
    double width = 360,
  }) async {
    when(() => bloc.state).thenReturn(state);
    await pumpView(
      tester,
      Scaffold(
        body: BlocProvider<FiltersBloc>.value(
          value: bloc,
          child: const FiltersSheet(),
        ),
      ),
      locale: locale,
      textScale: textScale,
      width: width,
    );
  }

  testWidgets('shows groups and the live count on the button', (tester) async {
    final state = counted('ru');
    await pump(tester, state);
    expect(find.text('Цена, TMT'), findsOneWidget);
    expect(find.text('Площадка'), findsOneWidget);
    expect(
      find.textContaining('Показать ${MoneyFormat.group(state.total ?? 0)}'),
      findsOneWidget,
    );
  });

  testWidgets('tapping a chip sends the new draft', (tester) async {
    await pump(tester, counted('ru'));
    await tester.tap(find.textContaining('Tmall'));
    final event =
        verify(() => bloc.add(captureAny())).captured.single as FiltersChanged;
    expect(event.draft.isChosen('source', 'tmall'), isTrue);
  });

  testWidgets('no matches disables the button', (tester) async {
    await pump(tester, counted('ru').copyWith(total: 0));
    expect(find.text('Ничего не найдено'), findsOneWidget);
  });

  testWidgets('reset is disabled until something is picked', (tester) async {
    await pump(tester, counted('ru'));
    await tester.tap(find.text('Сбросить'));
    verifyNever(() => bloc.add(any()));
  });

  for (final width in [360.0, 412.0]) {
    testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
      tester,
    ) async {
      final draft = const AppliedFilters(price: PriceRange(min: 300))
          .toggleChoice(
            'color',
            const FilterChoice(value: 'black', label: 'Gara'),
          )
          .toggleChoice(
            'brand',
            const FilterChoice(value: 'anker', label: 'Anker'),
          );
      await pump(
        tester,
        counted('tk', draft: draft),
        locale: AppLocales.tk,
        textScale: 1.3,
        width: width,
      );
      await scrollThrough(tester, find.byType(SingleChildScrollView).first);
      expect(find.textContaining('harydy görkez'), findsOneWidget);
    });
  }
}
