import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../app/theme/app_colors.dart';

/// The orange bottom bar from the design: Home, Menu, Favorites, Orders, Support.
class MainShell extends StatelessWidget {
  const MainShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  static const _icons = [
    Icons.home_outlined,
    Icons.room_service_outlined,
    Icons.favorite_border,
    Icons.receipt_long_outlined,
    Icons.support_agent_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        height: 72,
        decoration: const BoxDecoration(
          color: AppColors.orangeBase,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < _icons.length; i++)
                IconButton(
                  onPressed: () => navigationShell.goBranch(
                    i,
                    initialLocation: i == navigationShell.currentIndex,
                  ),
                  icon: Icon(
                    _icons[i],
                    size: 28,
                    color: i == navigationShell.currentIndex
                        ? AppColors.font2
                        : AppColors.font2.withValues(alpha: 0.6),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
