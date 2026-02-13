import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/features/home/gold/presentation/screens/gold_screen.dart';
import 'package:goldy/features/home/home_screen.dart';
import 'package:goldy/features/silver/presentation/screens/silver_screen.dart';

class AppRouter {
  static final GoRouter router  = GoRouter(
    initialLocation: Routes.home,
    routes:[
      GoRoute(
        path: Routes.home,
        builder: (context, state) => HomeScreen(),
        ),
        GoRoute(path: Routes.goldScreen, builder: (context, state) => GoldScreen()),
         GoRoute(path: Routes.silverScreen, builder: (context, state) => SilverScreen()),
    ]
    
    ); 
    static void goTo(BuildContext context, String routeName) {
    GoRouter.of(context).go(routeName);
  }

  static void pushTo(
    BuildContext context,
    String routeName, {
    Map<String, String>? extra,
  }) {
    GoRouter.of(context).push(routeName, extra: extra);
  }
}