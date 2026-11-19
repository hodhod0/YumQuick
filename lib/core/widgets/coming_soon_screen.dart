import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_styles.dart';
import 'pill_button.dart';

/// Temporary screen for pages we have not built yet.
class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key, required this.title, this.nextRoute});

  final String title;

  /// Optional route for a "Continue" button, so the app flow can be tested.
  final String? nextRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.yellowBase,
        title: Text(title, style: AppTextStyles.subtitle),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$title — coming soon', style: AppTextStyles.body),
            if (nextRoute != null) ...[
              const SizedBox(height: 24),
              PillButton(label: 'Continue', onPressed: () => context.go(nextRoute!)),
            ],
          ],
        ),
      ),
    );
  }
}
