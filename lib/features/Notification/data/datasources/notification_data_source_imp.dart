import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:notification_ui_page/features/Notification/data/datasources/notification_data_source.dart';
import '../../domain/entities/notification_entities.dart';

class NotificationDataSourceImp implements NotificationDataSource {
  @override
  Future<List<NotificationEntities>> getNotifications() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/notifications.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => NotificationEntities.fromJson(json)).toList();
  }

  @override
  Future<void> markAsRead(int id) async {
    // You can implement this if required later
    throw UnimplementedError();
  }
}
