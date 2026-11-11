import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/navigation/tab_reselect_scope.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  testWidgets('scrolls to top when its tab is reselected', (tester) async {
    final signal = TabReselectSignal();
    addTearDown(signal.dispose);
    await tester.pumpApp(
      TabReselectScope(
        signal: signal,
        child: RootTabPage(
          title: 'Каталог',
          slivers: [
            SliverList.builder(
              itemCount: 50,
              itemBuilder: (_, i) => SizedBox(height: 80, child: Text('$i')),
            ),
          ],
        ),
      ),
    );

    await tester.drag(find.byType(CustomScrollView), const Offset(0, -2000));
    await tester.pumpAndSettle();
    final position = tester
        .state<ScrollableState>(find.byType(Scrollable))
        .position;
    expect(position.pixels, greaterThan(0));

    signal.reselect();
    await tester.pumpAndSettle();
    expect(position.pixels, 0);
  });
}
