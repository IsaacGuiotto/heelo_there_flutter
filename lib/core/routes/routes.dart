import 'package:flutter/material.dart';
import 'package:hello_there/features/home/view/home_page.dart';

/// Class for app routes
class Routes {
  /// home route
  static const String home = "/";

  /// function to generate routes
  Route<dynamic>? Function(RouteSettings)? onGenerateRoute = (settings) {
    
    if (settings.name == home) {
      return MaterialPageRoute<HomePage>(
        settings: settings,
        builder: (context) => const HomePage(),
      );
    }

    assert(false, 'Need to implement ${settings.name}');

    return null;
  };

  /// Constructor for app routes
  Routes();
}
