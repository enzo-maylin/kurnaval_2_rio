import 'package:flutter/material.dart';

// 1. On définit un Enum pour typer strictement nos retours visuels
enum SnackBarType { info, success, warning, error }

class AppMessenger {
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  // ==========================================
  // MÉTHODES PUBLIQUES
  // ==========================================

  void showMessage(String message) {
    _showSnackBar(message, SnackBarType.info);
  }

  void showSuccess(String message) {
    _showSnackBar(message, SnackBarType.success);
  }

  void showWarning(String message) {
    _showSnackBar(message, SnackBarType.warning);
  }

  void showError(String message) {
    _showSnackBar(message, SnackBarType.error);
  }

  // ==========================================
  // MÉTHODE PRIVÉE (Logique UI centralisée)
  // ==========================================

  void _showSnackBar(String message, SnackBarType type) {
    final context = messengerKey.currentContext;
    if (context == null) return;

    final theme = Theme.of(context);

    Color backgroundColor;
    IconData icon;

    // 2. Définition du design System localisé selon le type
    switch (type) {
      case SnackBarType.info:
        backgroundColor = theme.colorScheme.primary;
        icon = Icons.info_outline;
        break;
      case SnackBarType.success:
        // Material 3 n'a pas de couleur "success" par défaut, le vert est un bon standard
        backgroundColor = Colors.green.shade700;
        icon = Icons.check_circle_outline;
        break;
      case SnackBarType.warning:
        backgroundColor = Colors.orange.shade800;
        icon = Icons.warning_amber_rounded;
        break;
      case SnackBarType.error:
        backgroundColor = theme.colorScheme.error;
        icon = Icons.error_outline;
        break;
    }

    // 3. Construction de la SnackBar
    final snackBar = SnackBar(
      backgroundColor: backgroundColor,
      behavior:
          SnackBarBehavior.floating, // Plus moderne qu'une barre collée en bas
      margin: const EdgeInsets.all(16), // Marge pour le style floating
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );

    // 4. Affichage
    messengerKey.currentState
      ?..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
