import 'package:go_router/go_router.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/features/home/home_screen.dart';

class AppRouter {
  static final GoRouter router  = GoRouter(
    initialLocation: Routes.home,
    routes:[
      GoRoute(
        path: Routes.home,
        builder: (context, state) => HomeScreen(),
        )
    ]
    
    ); 
}