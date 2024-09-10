import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rpg/main.dart';

void main() {
  group('SandBox Widget Tests', () {
    testWidgets('SandBox Widget renders correctly',
        (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(const MaterialApp(home: SandBox()));

      // Find the AppBar
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.text('SandBox'), findsOneWidget);

      // Find the body Text
      expect(find.text('SandBox'), findsOneWidget);

      // Check AppBar background color
      final appBar = tester.widget<AppBar>(find.byType(AppBar));
      expect(appBar.backgroundColor, Colors.grey);
    });
  });
}
