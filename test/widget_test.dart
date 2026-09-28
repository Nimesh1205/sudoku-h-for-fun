// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:hsudoku/main.dart';

void main() {
  testWidgets('Sudoku app shows the home screen content', (WidgetTester tester) async {
    await tester.pumpWidget(const SudokuApp());

    expect(find.bySemanticsLabel('SudokuH'), findsOneWidget);
    expect(find.text('Build Your Focus'), findsOneWidget);
    expect(find.text('Start New Game'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}
