import 'package:material_ui/material_ui.dart';

import 'router.dart';
import 'theme/app_theme.dart';

class YumQuickApp extends StatelessWidget {
  const YumQuickApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'YumQuick',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: appRouter,
    );
  }
}
