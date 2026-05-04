import 'package:flutter/material.dart';
import 'package:kurnaval_2_rio/core/router.dart';
import 'package:kurnaval_2_rio/core/theme/app_theme.dart';
import 'l10n/app_localizations.dart';
import 'package:kurnaval_2_rio/core/services/app_messenger.dart';
import 'package:kurnaval_2_rio/core/injection_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Configuration Router
      routerConfig: router,

      // Configuration scaffoldMessenger
      scaffoldMessengerKey: getIt<AppMessenger>().messengerKey,

      // Configuration l10n
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // Configuration Thème avec le nouveau Design System
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      // Debug
      debugShowCheckedModeBanner: false,
    );
  }
}
