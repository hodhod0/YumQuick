import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_styles.dart';

/// The YumQuick heart logo with the "YUMQUICK" word under it.
class YumQuickLogo extends StatelessWidget {
  const YumQuickLogo({super.key, this.onOrange = false});

  /// true = yellow logo for the orange background,
  /// false = orange logo for the yellow background.
  final bool onOrange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          onOrange ? 'assets/images/logo_yellow.svg' : 'assets/images/logo_orange.svg',
          width: 208,
          height: 185,
        ),
        const SizedBox(height: 20),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'YUM',
                style: AppTextStyles.logo(onOrange ? AppColors.yellowBase : AppColors.logoOrange),
              ),
              TextSpan(
                text: 'QUICK',
                style: AppTextStyles.logo(
                  AppColors.font2,
                  weight: onOrange ? FontWeight.w700 : FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
