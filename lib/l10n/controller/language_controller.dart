import 'package:flutter/material.dart';
import 'package:hello_there/l10n/l10n.dart';

/// language controller
class LanguageController {
  /// current selected language
  final ValueNotifier<Locale> selectedLanguage =
      ValueNotifier(L10n.locals.first);

  static final LanguageController _instance =
      LanguageController._privateConstructor();

  /// language Singleton controller Constructor
  factory LanguageController() {
    return _instance;
  }

  LanguageController._privateConstructor();
}
