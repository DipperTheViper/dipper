import 'package:dipper/ui/screen/main_screen.dart';
import 'package:dipper/utils/styles/colors/colors.dart';
import 'package:dipper/utils/styles/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  //hive
  //config
  //sentry
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['locale'];
    return MaterialApp.router(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      color: ColorsCategory.primary,
      title: 'Dipper',
      theme: AppThemes.lightTheme,
      routerConfig: _router,
      localizationsDelegates: [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // delegate from localization package.
        LocalJsonLocalization.delegate,
      ],
      supportedLocales: const [
        Locale("en", "US"),
        Locale("fa", "IR"),
      ],
    );
  }
}
