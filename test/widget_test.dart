// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import 'package:recipes/main.dart';
import 'package:recipes/recipe.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await mockNetworkImages(() async {
      await tester.pumpWidget(const RecipeApp());

      for (var recipe in Recipe.samples) {
        expect(find.text(recipe.label), findsOneWidget);
      }
    });
  });
}
