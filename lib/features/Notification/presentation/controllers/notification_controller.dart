import 'package:get/get.dart';
import 'package:notification_ui_page/features/Notification/data/models/notification_model.dart';

class NotificationController extends GetxController {
  // List of notifications
  final RxList<NotificationModel> notifications = <NotificationModel>[].obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadNotifications(); // Load notifications when the controller initializes
  }

  // Load demo notifications
  void loadNotifications() {
    isLoading.value = true;

    // Directly assign demoNotifications
    notifications.value = demoNotifications;

    // Simulate some loading delay
    Future.delayed(const Duration(milliseconds: 500), () {
      isLoading.value = false;
    });

    print('Loaded ${notifications.length} notifications.');
  }

  // Mark a notification as read
  void markAsRead(int index) {
    notifications[index] = notifications[index].copyWith(isRead: true);
  }

  // Add a new notification
  void addNotification(NotificationModel notification) {
    notifications.add(notification);
  }

  // Remove a notification
  void removeNotification(int index) {
    notifications.removeAt(index);
  }
}
