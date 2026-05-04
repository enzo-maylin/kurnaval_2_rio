import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kurnaval_2_rio/core/theme/theme.dart';

class MainLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainLayout({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    // Récupération du thème pour gérer les couleurs proprement
    final theme = Theme.of(context);

    return Scaffold(
      // La couleur de fond du Scaffold est cruciale pour que l'effet courbé fonctionne
      backgroundColor: theme.scaffoldBackgroundColor,
      body: navigationShell,

      bottomNavigationBar: CurvedNavigationBar(
        index: navigationShell.currentIndex,

        backgroundColor: theme.curvedNavBarBackground,
        color: theme.curvedNavBarColor,
        buttonBackgroundColor: theme.curvedNavBarButtonBackground,

        animationDuration: const Duration(milliseconds: 300),

        // Gestion de la navigation avec go_router
        onTap: (index) {
          navigationShell.goBranch(
            index,
            // si l'utilisateur re-clique sur l'onglet actif, cela le ramène à la racine de la pile de navigation de cet onglet.
            initialLocation: index == navigationShell.currentIndex,
          );
        },

        // Liste des icônes
        items: const [
          Icon(Icons.calendar_today),
          Icon(Icons.notifications),
          Icon(Icons.mail),
          Icon(Icons.info),
          Icon(Icons.book),
        ],
      ),
    );
  }
}
