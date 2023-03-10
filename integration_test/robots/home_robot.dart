import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

///robot to test home page
class HomeRobot {
  final WidgetTester tester;
  final String _helloThere = "Hello There";
  HomeRobot(this.tester);

  /// First text is going to be in english, after tap expect
  /// to be another language
  Future<void> clickOnScreen() async {
    expect(find.text(_helloThere), findsOneWidget);
    await tester.tap(find.byType(Scaffold));
    await tester.pumpAndSettle();
    expect(find.text(_helloThere), findsNothing);
  }
}
