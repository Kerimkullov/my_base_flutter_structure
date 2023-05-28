import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_beeline/core/di/injection.dart';
import 'package:my_beeline/features/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:my_beeline/features/router/app_router.dart';
import 'package:my_beeline/ui/themes/themes.dart';

class App extends StatefulHookWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final bottomNavigationCubit = getIt<BottomBarCubit>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => bottomNavigationCubit),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        darkTheme: MyBeelineDarkTheme.theme,
        routerConfig: getGoRouter(),
        theme: MyBeelineLightTheme.theme,
        themeMode: ThemeMode.dark,
        localizationsDelegates: const [
          // Add for localization
          // AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        // supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) =>
            ScrollConfiguration(behavior: NonGlowBehavior(), child: child!),
      ),
    );
  }
}

class NonGlowBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
