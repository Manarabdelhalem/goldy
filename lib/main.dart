
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/core/routing/app_router.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/features/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
DioHelper.init();

  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
       
      ],
      builder: (context) => const MyApp(),
    ),
  );
}


// Define your router configuration


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Goldy App',
      routerConfig: AppRouter.router, // This replaces initialRoute and home
    );
  }
}