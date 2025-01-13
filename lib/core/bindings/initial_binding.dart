import 'package:get/get.dart';
import 'package:notification_ui_page/features/Notification/presentation/controllers/notification_controller.dart';

class InitialBinding {
  void dependencies() {
    // Initialize your dependencies here
    // Example: Get.put(SomeController());
    Get.put(NotificationController());
  }
} 