import 'package:flutter/material.dart';

abstract class AppColors {
  // ============ DARK THEME ============
  static const darkBackground = Color(0xFF042A2B);
  static const darkForeground = Color(0xFFFFF7E6);
  static const darkCard = Color(0xFF0B3D52);
  static const darkCardForeground = Color(0xFFFFF7E6);
  static const darkMuted = Color(0xFF1B5F4F);
  static const darkMutedForeground = Color(0xFFB8E0D2);
  static const darkBorder = Color(0xFF1B5F4F);
  static const darkInput = Color(0xFF165A48);

  // ============ LIGHT THEME ============
  static const lightBackground = Color(0xFFFFF8E7);
  static const lightForeground = Color(0xFF052C45);
  static const lightCard = Color(0xFFFFF8E7);
  static const lightCardForeground = Color(0xFF052C45);
  static const lightMuted = Color(0xFFF7E7B9);
  static const lightMutedForeground = Color(0xFF7B5E3A);
  static const lightBorder = Color(0x1A1B5F4F); // rgba(27, 95, 79, 0.1)
  static const lightInput = Color(0xFFFFF1C9);

  // ============ COULEURS PARTAGÉES ============
  // Primary - Vert carnaval
  static const primary = Color(0xFF00C853);
  static const primaryForeground = Color(0xFF042A2B);

  // Secondary - Jaune vif
  static const secondary = Color(0xFFFFC400);
  static const secondaryForeground = Color(0xFF042A2B);

  // Accent - Turquoise Brésil
  static const accent = Color(0xFF00B8D4);
  static const accentForeground = Color(0xFF042A2B);

  // Destructive - Rose flamboyant
  static const destructive = Color(0xFFFF3D80);
  static const destructiveForeground = Color(0xFFFFFFFF);

  // Success - Vert lime
  static const success = Color(0xFF00E676);
  static const successForeground = Color(0xFF042A2B);

  // Warning - Orange chaud
  static const warning = Color(0xFFFFAB00);
  static const warningForeground = Color(0xFF042A2B);

  // ============ COULEURS DU PODIUM ============
  static const gold = Color(0xFFFFC400);
  static const silver = Color(0xFFC0C0C0);
  static const bronze = Color(0xFFCD7F32);

  // ============ COULEURS DES GRAPHIQUES ============
  static const chart1 = Color(0xFF00C853);
  static const chart2 = Color(0xFFFFC400);
  static const chart3 = Color(0xFFFF4081);
  static const chart4 = Color(0xFF00B8D4);
  static const chart5 = Color(0xFF7C4DFF);
}
