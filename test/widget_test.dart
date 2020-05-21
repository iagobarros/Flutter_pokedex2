import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/features/onboarding/onboarding.dart';

void main() {
  group("Onboarding widget tests", () {
    testWidgets('Navigate to Onboarding first page to last page to expect text',
        (WidgetTester tester) async {
      var onboardingPage = OnboardingPage();

      await tester.pumpWidget(CupertinoApp(home: onboardingPage));
      var element = find.byKey(Key("onboarding_page_view"));

      await tester.drag(element, Offset(-500, 0));

      expect(find.text("Generation 1"), findsOneWidget);
      expect(find.text("Gotta Catch Them All"), findsOneWidget);
      await tester.drag(element, Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text("Generation 2"), findsOneWidget);
      expect(find.text("Gotta Catch Them All"), findsOneWidget);
      await tester.drag(element, Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text("Generation 3"), findsOneWidget);
      expect(find.text("Gotta Catch Them All"), findsOneWidget);
      await tester.drag(element, Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text("Generation 4"), findsOneWidget);
      expect(find.text("Gotta Catch Them All"), findsOneWidget);
      await tester.drag(element, Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text("Generation 5"), findsOneWidget);
      await tester.drag(element, Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text("Generation 6"), findsOneWidget);
      expect(find.text("Gotta Catch Them All"), findsOneWidget);
      await tester.drag(element, Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text("Generation 7"), findsOneWidget);
      expect(find.text("Gotta Catch Them All"), findsOneWidget);
      await tester.drag(element, Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text("Generation 7"), findsOneWidget);
      expect(find.text("Gotta Catch Them All"), findsOneWidget);
    });
  });
}
