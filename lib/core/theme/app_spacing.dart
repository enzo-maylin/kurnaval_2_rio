import 'package:flutter/material.dart';

abstract class AppSpacing {
  // ============ ESPACEMENTS DE BASE ============
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;

  // ============ PADDING ============
  static const EdgeInsets pagePadding = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets cardPadding = EdgeInsets.all(lg);
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(
    horizontal: lg,
    vertical: md,
  );

  // ============ BORDER RADIUS ============
  static const double radiusSm = 6.0;
  static const double radiusMd = 8.0;
  static const double radiusLg = 10.0;
  static const double radiusXl = 12.0;
  static const double radiusXxl = 16.0;
  static const double radiusFull = 999.0;

  static BorderRadius borderRadiusSm = BorderRadius.circular(radiusSm);
  static BorderRadius borderRadiusMd = BorderRadius.circular(radiusMd);
  static BorderRadius borderRadiusLg = BorderRadius.circular(radiusLg);
  static BorderRadius borderRadiusXl = BorderRadius.circular(radiusXl);
  static BorderRadius borderRadiusXxl = BorderRadius.circular(radiusXxl);
  static BorderRadius borderRadiusFull = BorderRadius.circular(radiusFull);

  // ============ DIMENSIONS FIXES ============
  static const double bottomNavHeight = 64.0;
  static const double headerHeight = 56.0;
  static const double matchCardImageHeight = 192.0;
  static const double avatarSm = 32.0;
  static const double avatarMd = 48.0;
  static const double avatarLg = 64.0;
  static const double avatarXl = 80.0;
  static const double iconSm = 16.0;
  static const double iconMd = 20.0;
  static const double iconLg = 24.0;

  // ============ LARGEUR MAX (MOBILE FIRST) ============
  static const double maxWidth = 448.0; // max-w-md en Tailwind
}
