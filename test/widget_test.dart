import 'package:flutter_test/flutter_test.dart';
import 'package:tradieconnect/main.dart';

void main() {
  testWidgets('TradieConnect app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const TradieConnectApp());

    expect(find.text('TradieConnect'), findsWidgets);
  });
}