import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'core/shared/bloc_observer.dart';
import 'core/utils/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();

  runApp(const RippleLogin());
}

class RippleLogin extends StatelessWidget {
  const RippleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: appTheme(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
      );
    });
  }
}
