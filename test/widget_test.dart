import 'package:flutter_test/flutter_test.dart';
import 'package:kemet_explorer/app.dart';

void main() {
  testWidgets('App starts', (WidgetTester tester) async {
    await tester.pumpWidget(const KemetExplorerApp());
    expect(find.text('Kemet Explorer'), findsWidgets);
  });
}
