import 'package:flutter_test/flutter_test.dart';
import 'package:kind_of_cool_ideas/app/app.dart';
import 'package:kind_of_cool_ideas/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
