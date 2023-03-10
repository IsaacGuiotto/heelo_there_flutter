import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hello_there/core/generics/styles/themes.dart';
import 'package:hello_there/core/routes/routes.dart';
import 'package:hello_there/l10n/controller/language_controller.dart';
import 'package:hello_there/l10n/l10n.dart';

/// MaterialApp Widget
class AppWidget extends StatelessWidget {
  final LanguageController _languageController = LanguageController();

  /// MaterialApp Widget
  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _languageController.selectedLanguage,
      builder: (context, loc, _) {
        return MaterialApp(
          theme: Themes.appTheme,
          onGenerateRoute: Routes().onGenerateRoute,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: L10n.locals,
          locale: loc,
        );
      },
    );
  }
}
