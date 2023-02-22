import 'package:flutter/material.dart';
import 'package:ripple_logiin/core/utils/media_query_values.dart';

import '../../core/utils/app_strings.dart';
import '../../features/login/presentation/screens/login_screen.dart';
import '../../features/onboarding/presentation/screens/onBoardingScreen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) {
          return OnBoardingScreen(screenHeight: context.height);
        });

      case Routes.onBoarding:
        return MaterialPageRoute(builder: (context) {
          return OnBoardingScreen(screenHeight: context.height);
        });

      case Routes.login:
        return MaterialPageRoute(builder: (context) {
          return LoginScreen(screenHeight: context.height);
        });

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: ((context) => const Scaffold(
            body: Center(
              child: Text(AppStrings.noRouteFound),
            ),
          )),
    );
  }
}
