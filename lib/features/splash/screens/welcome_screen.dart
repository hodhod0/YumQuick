import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_text_styles.dart';
import '../../../core/widgets/pill_button.dart';
import '../../../core/widgets/yumquick_logo.dart';

/// Figma: "0 - B - Launch Welcome Screen".
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeBase,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const YumQuickLogo(onOrange: true),
              const SizedBox(height: 40),
              SizedBox(
                width: 295,
                child: Text(
                  'Your favorite meals, delivered fast and fresh to your door.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.body.copyWith(color: AppColors.font2),
                ),
              ),
              const SizedBox(height: 50),
              PillButton(
                label: 'Log In',
                onPressed: () => context.push(AppRoutes.login),
              ),
              const SizedBox(height: 4),
              PillButton(
                label: 'Sign Up',
                backgroundColor: AppColors.yellow2,
                onPressed: () => context.push(AppRoutes.signUp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
