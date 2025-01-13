import 'package:flutter/material.dart';
import 'package:notification_ui_page/core/bindings/initial_binding.dart';
import 'package:notification_ui_page/core/theme/app_theme.dart';
import 'package:notification_ui_page/features/Notification/presentation/pages/notification_page.dart';

void main() {
  // Initialize dependencies
  InitialBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.light,
      home: NotificationPage(),
    );
  }
}
