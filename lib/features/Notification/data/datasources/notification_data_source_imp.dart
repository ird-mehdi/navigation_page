import 'package:notification_ui_page/features/Notification/data/datasources/notification_data_source.dart';
import 'package:notification_ui_page/features/Notification/domain/entities/notification_entities.dart';

class NotificationDataSourceImp implements NotificationDataSource {
  @override
  Future<List<NotificationEntities>> getNotifications() {
   
    throw UnimplementedError();
  }

  @override
  Future<void> markAsRead(int id) {
    
    throw UnimplementedError();
  }
  
}