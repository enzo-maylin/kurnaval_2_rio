import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/main_layout.dart';
import '../features/home/pages/home.dart';
import 'package:kurnaval_2_rio/core/pages/splash_page.dart';
import 'package:kurnaval_2_rio/core/app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: AppRoute.calendar.path,

  navigatorKey: _rootNavigatorKey,

  routes: [
    // --- PAGES HORS NAVIGATION ---
    GoRoute(
      name: AppRoute.splashScreen.name,
      path: AppRoute.splashScreen.path,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const SplashPage(),
    ),

    // --- PAGES AVEC NAVIGATION ---
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainLayout(navigationShell: navigationShell);
      },
      branches: [
        // Branche 1 : Calendar
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoute.calendar.path,
              name: AppRoute.calendar.name,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        // Branche 2 : news
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoute.news.path,
              name: AppRoute.news.name,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        // Branche 3 : Contact
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoute.contact.path,
              name: AppRoute.contact.name,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        // Branche 4 : Info
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoute.info.path,
              name: AppRoute.info.name,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        // Branche 5 : Lexicon
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoute.lexicon.path,
              name: AppRoute.lexicon.name,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
