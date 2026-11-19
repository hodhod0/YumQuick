import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light {
    final base = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.orangeBase,
        primary: AppColors.orangeBase,
        secondary: AppColors.yellowBase,
      ),
      scaffoldBackgroundColor: Colors.white,
    );

    return base.copyWith(
      textTheme: GoogleFonts.leagueSpartanTextTheme(base.textTheme).apply(
        bodyColor: AppColors.font,
        displayColor: AppColors.font,
      ),
    );
  }
}
