import 'package:go_router/go_router.dart';
import 'package:spectromobi_app/app/routes/route_names.dart';
import 'package:spectromobi_app/pages/home.dart';
import 'package:spectromobi_app/pages/modules.dart';
import 'package:spectromobi_app/pages/settings.dart';

final appRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      name: RouteNames.homepage,
      path: "/home",
      builder: (context, state) => const HomePage(),
      ),
    GoRoute(
      name: RouteNames.modules,
      path: "/modules",
      builder: (context, state) => const ModulesPage(),
      ),
    GoRoute(
      name: RouteNames.settings,
      path: "/settings",
      builder: (context, state) => const SettingsPage(),
      ),
  ]
);