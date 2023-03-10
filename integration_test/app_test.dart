import 'package:flutter_test/flutter_test.dart';
import 'package:hello_there/main.dart' as app;
import 'package:integration_test/integration_test.dart';
import 'robots/home_robot.dart';
// COMAND TO RUN THE TEST:
// flutter clean && flutter pub get && flutter test integration_test
// you need to have the simulator open

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized().framePolicy =
      LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  //// E2E TEST ////
  // the robots logic means that every page has a robot with clear functions to
  //run the tests
  // every test is made in english language
  testWidgets("E2E TEST", (tester) async {
    // ROBOTS //
    final HomeRobot homeRobot = HomeRobot(tester);

    // ---- //

    // start app //
    await Future<dynamic>.delayed(const Duration(seconds: 2));
    app.main();
    await tester.pumpAndSettle();

    // ---- //

    // HOMEPAGE TEST //
    await homeRobot.clickOnScreen();
    // ---- //
  });
}
