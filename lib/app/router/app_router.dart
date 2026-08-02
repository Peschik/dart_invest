import 'package:flutter_study/features/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

abstract final class AppRouter {
  static final appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    ],
  );
}
