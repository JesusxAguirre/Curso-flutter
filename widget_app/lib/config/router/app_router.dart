import 'package:go_router/go_router.dart';
import 'package:widget_app/representation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/buttons', builder: (context, state) => ButtonsScreen()),
    GoRoute(path: '/cards', builder: (context, state) => CardsScreen()),
    GoRoute(path: '/progress', builder: (context, state) => ProgressScreen()),
    GoRoute(path: '/snackbar', builder: (context, state) => SnackbarScreen()),
    GoRoute(path: '/animated', builder: (context, state) => AnimatedScreen()),
    GoRoute(
      path: '/ui-controls',
      builder: (context, state) => UiControlsScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      builder: (context, state) => AppTutorialScreen(),
    ),
  ],
);
