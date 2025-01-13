import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notification_ui_page/core/constant/app_assets.dart';
import 'package:notification_ui_page/core/constant/app_dimensions.dart';
import 'package:notification_ui_page/core/constant/app_colors.dart';

import '../../data/models/notification_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;


  const NotificationCard({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
   // final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimensions.padding / 2,
        vertical: AppDimensions.padding / 2,
      ),
      padding: const EdgeInsets.all(AppDimensions.padding),
      decoration: BoxDecoration(
        color: notification.isRead ? AppColors.backgroundRead : AppColors.backgroundUnread,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: AppDimensions.iconContainerSize / 2,
                backgroundColor: AppColors.iconBackground,
                child: SvgPicture.asset(
                  notification.icon,
                  width: AppDimensions.iconSize,
                  height: AppDimensions.iconSize,
                ),
              ),
              const SizedBox(width: AppDimensions.spacing),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                         notification.title,
                      style: TextStyle(
                        fontSize: AppDimensions.fontSizeSmall,
                        fontWeight: FontWeight.w500,
                        color: AppColors.titleText,
                      ),
                    ),
                    const SizedBox(height: AppDimensions.spacingSmall),
                    Text(
                      notification.message,
                      style: TextStyle(
                        fontSize: AppDimensions.fontSizeSmall,
                        color: AppColors.messageText,
                        height: 1.8,
                      ),
                    ),
                    if (notification.hasAction && notification.actionText != null) ...[
                      const SizedBox(height: AppDimensions.spacingLarge),
                      _buildActionButton(),
                    ],
                    const SizedBox(height: AppDimensions.spacingLarge),
                    _buildTimeRow(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.actionBackground,
        borderRadius: BorderRadius.circular(AppDimensions.buttonBorderRadius),
        border: Border.all(
          color: AppColors.actionBorder,
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Add your action logic here
          },
          borderRadius: BorderRadius.circular(AppDimensions.buttonBorderRadius),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingSmall * 2,
              vertical: AppDimensions.paddingSmall,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  notification.actionText!,
                  style: TextStyle(
                    color: AppColors.iconColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: AppDimensions.spacingSmall),
                Icon(
                  Icons.arrow_forward,
                  size: AppDimensions.iconSizeMedium,
                  color: AppColors.iconColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimeRow() {
    return Row(
      children: [
        SvgPicture.asset(
          AppAssets.timer,
          width: AppDimensions.iconSizeSmall,
          height: AppDimensions.iconSizeSmall,
          colorFilter: ColorFilter.mode(
            AppColors.timeIcon,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: AppDimensions.spacingSmall),
        Text(
          notification.timeAgo,
          style: TextStyle(
            fontSize: AppDimensions.fontSizeSmall,
            fontWeight: FontWeight.w400,
            color: AppColors.timeText,
          ),
        ),
      ],
    );
  }
}
