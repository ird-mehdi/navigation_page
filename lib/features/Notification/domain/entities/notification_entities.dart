
class NotificationEntities {
  final String title;
  final String message;
  final String timeAgo;
  final String icon;
  final bool hasAction;
  final String? actionText;
  final bool isRead;

  const NotificationEntities({
    required this.title,
    required this.message,
    required this.timeAgo,
    required this.icon,
    this.hasAction = false,
    this.actionText,
    this.isRead = false,
  });
  // Convert from JSON
  factory NotificationEntities.fromJson(Map<String, dynamic> json) {
    return NotificationEntities(
      title: json['title'],
      message: json['message'],
      timeAgo: json['timeAgo'],
      icon: json['icon'],
      hasAction: json['hasAction'] ?? false,
      actionText: json['actionText'],
      isRead: json['isRead'] ?? false,
    );
  }

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'message': message,
      'timeAgo': timeAgo,
      'icon': icon,
      'hasAction': hasAction,
      'actionText': actionText,
      'isRead': isRead,
    };
  }
}