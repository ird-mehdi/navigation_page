import 'package:get/get.dart';
import '../../domain/entities/notification_entities.dart';
import '../../domain/usecases/get_notification.dart';

class NotificationController extends GetxController {
  final GetNotificationUseCase getNotificationUseCase;

  NotificationController(this.getNotificationUseCase);

  final RxList<NotificationEntities> notifications =
      <NotificationEntities>[].obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadNotifications();
  }

  void loadNotifications() async {
    isLoading.value = true;
    final fetchedNotifications = await getNotificationUseCase();
    notifications.value = fetchedNotifications;
    isLoading.value = false;
  }
}
