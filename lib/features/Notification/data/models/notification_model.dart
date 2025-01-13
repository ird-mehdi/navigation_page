import 'package:notification_ui_page/core/constant/app_assets.dart';

import '../../domain/entities/notification_entities.dart';

class NotificationModel extends NotificationEntities {
  const NotificationModel({
    required super.title,
    required super.message,
    required super.timeAgo,
    required super.icon,
    super.hasAction,
    super.actionText,
    super.isRead,
  });

  NotificationModel copyWith({
    String? title,
    String? message,
    String? timeAgo,
    String? icon,
    bool? hasAction,
    String? actionText,
    bool? isRead,
  }) {
    return NotificationModel(
      title: title ?? this.title,
      message: message ?? this.message,
      timeAgo: timeAgo ?? this.timeAgo,
      icon: icon ?? this.icon,
      hasAction: hasAction ?? this.hasAction,
      actionText: actionText ?? this.actionText,
      isRead: isRead ?? this.isRead,
    );
  }
}

// Updated demo data with 10 notifications
final List<NotificationModel> demoNotifications = [
  NotificationModel(
    title: 'Daily Ayah',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '1 mins ago',
    icon: AppAssets.messages,
    isRead: false,
  ),
  NotificationModel(
    title: 'App Notification Title',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '5 mins ago',
    icon: AppAssets.notification,
    isRead: true,
  ),
  NotificationModel(
    title: 'Sadaqah Jariyah',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '15 mins ago',
    icon: AppAssets.lovely,
    hasAction: true,
    actionText: 'Support Now',
    isRead: false,
  ),
  NotificationModel(
    title: 'Prayer Time',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '30 mins ago',
    icon: AppAssets.messages,
    isRead: true,
  ),
  NotificationModel(
    title: 'Community Achievement',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '1 hour ago',
    icon: AppAssets.notification,
    isRead: false,
  ),
  NotificationModel(
    title: 'Quran Progress',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '2 hours ago',
    icon: AppAssets.lovely,
    hasAction: true,
    actionText: 'Continue Reading',
    isRead: false,
  ),
  NotificationModel(
    title: 'Donation Impact',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '3 hours ago',
    icon:AppAssets.messages,
    isRead: true,
  ),
  NotificationModel(
    title: 'Community Event',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '5 hours ago',
    icon:AppAssets.notification,
    hasAction: true,
    actionText: 'Register Now',
    isRead: false,
  ),
  NotificationModel(
    title: 'Ramadan Reminder',
    message: 'Only 30 days left until Ramadan. Start preparing your mind and soul.',
    timeAgo: 'Yesterday',
    icon: AppAssets.notification,
    isRead: true,
  ),
  NotificationModel(
    title: 'Weekly Summary',
    message: 'The review you made for Iman Poricor helped the community and you earned 3 Points.',
    timeAgo: '2 days ago',
    icon:AppAssets.lovely,
    hasAction: true,
    actionText: 'View Details',
    isRead: false,
  ),
];