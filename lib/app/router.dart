import 'package:go_router/go_router.dart';

import '../core/widgets/coming_soon_screen.dart';
import '../core/widgets/main_shell.dart';
import '../features/home/screens/home_screen.dart';
import '../features/splash/screens/launch_screen.dart';
import '../features/splash/screens/welcome_screen.dart';

/// All route paths in one place.
class AppRoutes {
  AppRoutes._();

  static const launch = '/';
  static const welcome = '/welcome';
  static const login = '/login';
  static const signUp = '/signup';
  static const home = '/home';
  static const menu = '/menu';
  static const favorites = '/favorites';
  static const orders = '/orders';
  static const support = '/support';
}

GoRoute _soon(String path, String title, {String? next}) => GoRoute(
      path: path,
      builder: (_, _) => ComingSoonScreen(title: title, nextRoute: next),
    );

final appRouter = GoRouter(
  initialLocation: AppRoutes.launch,
  routes: [
    GoRoute(path: AppRoutes.launch, builder: (_, _) => const LaunchScreen()),
    GoRoute(path: AppRoutes.welcome, builder: (_, _) => const WelcomeScreen()),
    _soon(AppRoutes.login, 'Log In', next: AppRoutes.home),
    _soon(AppRoutes.signUp, 'Sign Up', next: AppRoutes.home),

    // Main app with the bottom bar. Each branch keeps its own navigation history.
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => MainShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(path: AppRoutes.home, builder: (_, _) => const HomeScreen()),
        ]),
        StatefulShellBranch(routes: [_soon(AppRoutes.menu, 'Menu')]),
        StatefulShellBranch(routes: [_soon(AppRoutes.favorites, 'Favorites')]),
        StatefulShellBranch(routes: [_soon(AppRoutes.orders, 'My Orders')]),
        StatefulShellBranch(routes: [_soon(AppRoutes.support, 'Help & Support')]),
      ],
    ),
  ],
);
