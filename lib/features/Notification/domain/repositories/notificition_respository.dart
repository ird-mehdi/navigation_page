import '../entities/notification_entities.dart';

abstract class NotificationRepository {
  Future<List<NotificationEntities>> getNotifications();
  Future<void> markAsRead(int id);
}