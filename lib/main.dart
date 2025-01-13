import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Make the status bar transparent
        statusBarIconBrightness: Brightness.dark, // Light icons
        statusBarBrightness: Brightness.dark, // For iOS devices
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.light,
        home: NotificationPage(),
      ),
    );
  }
}
