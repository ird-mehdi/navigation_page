import '../../domain/entities/notification_entities.dart';
import '../../domain/repositories/notificition_respository.dart';
import '../models/notification_model.dart';

class NotificationRepositoryImp implements NotificationRepository {
  @override
  Future<List<NotificationEntities>> getNotifications() async {
    return demoNotifications;
  }
  @override
  Future<void> markAsRead(int id) {
    throw UnimplementedError();
  }
}