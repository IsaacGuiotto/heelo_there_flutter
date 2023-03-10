import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Class for normal strings in the app
class NormalStrings {
  /// Contructor for normal strings in the app
  NormalStrings();

  /// Hello There string
  static String helloThere(BuildContext context) =>
      AppLocalizations.of(context)?.helloThere ?? "Hello There";
}
