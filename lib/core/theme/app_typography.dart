import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Utilise Inter comme police principale et Montserrat pour les titres
abstract class AppTypography {
  // Police principale
  static String get _fontFamily => GoogleFonts.inter().fontFamily!;
  static String get _headingFontFamily => GoogleFonts.montserrat().fontFamily!;

  // ============ HEADINGS ============
  static TextStyle heading1(Color color) => TextStyle(
    fontFamily: _headingFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.3,
    color: color,
  );

  static TextStyle heading2(Color color) => TextStyle(
    fontFamily: _headingFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.4,
    color: color,
  );

  static TextStyle heading3(Color color) => TextStyle(
    fontFamily: _headingFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: color,
  );

  static TextStyle heading4(Color color) => TextStyle(
    fontFamily: _headingFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );

  // ============ BODY ============
  static TextStyle bodyLarge(Color color) => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: color,
  );

  static TextStyle bodyMedium(Color color) => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: color,
  );

  static TextStyle bodySmall(Color color) => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: color,
  );

  // ============ LABELS ============
  static TextStyle labelLarge(Color color) => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: color,
  );

  static TextStyle labelMedium(Color color) => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: color,
  );

  static TextStyle labelSmall(Color color) => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: color,
  );

  // ============ BUTTON ============
  static TextStyle button(Color color) => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );

  // ============ SPECIAL ============
  static TextStyle odds(Color color) => TextStyle(
    fontFamily: _headingFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: color,
  );

  static TextStyle points(Color color) => TextStyle(
    fontFamily: _headingFontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w800,
    height: 1.2,
    color: color,
  );

  static TextStyle rank(Color color) => TextStyle(
    fontFamily: _headingFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: color,
  );
}
