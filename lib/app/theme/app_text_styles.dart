import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

import 'app_colors.dart';

/// Text styles from the Figma design (League Spartan for the app, Poppins for the logo).
class AppTextStyles {
  AppTextStyles._();

  static TextStyle get title => GoogleFonts.leagueSpartan(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppColors.font,
      );

  static TextStyle get subtitle => GoogleFonts.leagueSpartan(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.font,
      );

  static TextStyle get body => GoogleFonts.leagueSpartan(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.0,
        color: AppColors.font,
      );

  static TextStyle get button => GoogleFonts.leagueSpartan(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColors.orangeBase,
      );

  static TextStyle logo(Color color, {FontWeight weight = FontWeight.w800}) =>
      GoogleFonts.poppins(fontSize: 34.8, fontWeight: weight, color: color);
}
