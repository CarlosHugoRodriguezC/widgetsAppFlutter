import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScrren(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    )
  ],
);
