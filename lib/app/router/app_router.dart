import 'package:flutter_study/features/analytics/presentation/analytics_screen.dart';
import 'package:flutter_study/features/assets/presentation/assets_screen.dart';
import 'package:flutter_study/features/home/presentation/home_screen.dart';
import 'package:flutter_study/features/goal/presentation/goal_screen.dart';
import 'package:flutter_study/features/operations/presentation/operations_screen.dart';
import 'package:flutter_study/features/shell/presentation/main_shell.dart';
import 'package:flutter_study/features/operation_form/presentation/operation_form_screen.dart';
import 'package:go_router/go_router.dart';

abstract final class AppRouter {
  static final appRouter = GoRouter(
    initialLocation: '/',

    routes: [
      GoRoute(path: '/', redirect: (_, __) => '/home'),

      GoRoute(
        path: '/goals/:id',
        builder: (context, state) =>
            GoalScreen(id: state.pathParameters['id']!),
      ),

      GoRoute(
        path: '/operations/new',
        builder: (context, state) => const OperationFormScreen(),
      ),

      GoRoute(
        path: '/operations/:id/edit',
        builder: (context, state) => OperationFormScreen(id: state.pathParameters['id']!),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainShell(navigationShell: navigationShell);
        },

        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/assets',
                builder: (context, state) => const AssetsScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/operations',
                builder: (context, state) => const OperationsScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/analytics',
                builder: (context, state) => const AnalyticsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
