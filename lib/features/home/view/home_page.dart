import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_there/core/generics/strings/normal_strings.dart';

import 'package:hello_there/core/generics/styles/app_colors.dart';
import 'package:hello_there/l10n/controller/language_controller.dart';
import 'package:hello_there/l10n/l10n.dart';

/// Home Page
class HomePage extends StatefulWidget {
  /// Home Page Contructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backGroundColor = Colors.blueAccent;
  Color textColor = AppColors.black;
  int _previousSelectedNumber = 0;
  final int maxRgbBit = 255;
  final LanguageController _languageController = LanguageController();

  void randomizeColor() {
    setState(() {
      backGroundColor = backGroundColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  // inverting color of the text compared to the background color
  void invertColor() {
    final int r = maxRgbBit - backGroundColor.red;
    final int g = maxRgbBit - backGroundColor.green;
    final int b = maxRgbBit - backGroundColor.blue;

    setState(() {
      textColor = Color.fromARGB(
        (backGroundColor.opacity * maxRgbBit).round(),
        r,
        g,
        b,
      );
    });
  }

  int selectRandomNumber() {
    bool sameNumber = true;
    int randomNum = 0;

    while (sameNumber) {
      randomNum = Random().nextInt(L10n.locals.length);
      if (_previousSelectedNumber != randomNum) {
        sameNumber = false;
      }
    }
    _previousSelectedNumber = randomNum;

    return randomNum;
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => {
        randomizeColor(),
        invertColor(),
        _languageController.selectedLanguage.value =
            L10n.locals[selectRandomNumber()]
      },
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: Center(
          child: Text(
            NormalStrings.helloThere(context),
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
