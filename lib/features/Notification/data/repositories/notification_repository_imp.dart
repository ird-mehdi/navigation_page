import 'package:notification_ui_page/features/Notification/domain/entities/notification_entities.dart';
import 'package:notification_ui_page/features/Notification/domain/repositories/notificition_respository.dart';

import '../datasources/notification_data_source.dart';

class NotificationRepositoryImp implements NotificationRepository {
  final NotificationDataSource dataSource;

  NotificationRepositoryImp(this.dataSource);

  @override
  Future<List<NotificationEntities>> getNotifications() {
    return dataSource.getNotifications();
  }

  @override
  Future<void> markAsRead(int id) {
    // You can implement this if required later
    throw UnimplementedError();
  }
}
