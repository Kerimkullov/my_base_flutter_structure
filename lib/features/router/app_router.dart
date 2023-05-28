import 'package:go_router/go_router.dart';
import 'package:my_beeline/features/bottom_bar/view/tab_screen.dart';

GoRouter getGoRouter() => GoRouter(
      debugLogDiagnostics: true,
      // Add stream to handle bloc redirection
      // refreshListenable: GoRouterRefreshStream(),
      initialLocation: '/',
      // Add redirection to handle auth
      // redirect: (context, state) async {

      //   return null;
      // },
      // Add AnalyticsService to handle analytics
      // observers: [getIt<AnalyticsService>().observer],
      routes: [
        GoRoute(
          path: '/',
          builder: (_, __) => const TabScreen(),
        ),
      ],
    );
