// /utils/constants.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF87CEEB);
  static const Color background = Colors.white;
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Color(0xFF00008B);
  static const Color blue = Colors.blue;
}

class AppStyles {
  /// Title style - bold, larger, for headings
  static TextStyle titleStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// Subtitle style - medium size, secondary color
  static TextStyle subtitleStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  /// Body style - regular body text
  static TextStyle bodyStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  /// Small text style - for captions or helper text
  static TextStyle smallStyle(BuildContext context) => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
}

class AppSizes {
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double avatarSize = 50.0;
  static const double avatarSizeSmall = 40.0;
}