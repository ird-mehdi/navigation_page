import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:notification_ui_page/core/constant/app_colors.dart';
import 'package:notification_ui_page/features/Notification/presentation/controllers/notification_controller.dart';
import 'package:notification_ui_page/features/Notification/presentation/widgets/notification_card.dart';

import '../../../../core/constant/app_assets.dart';
import '../../../../core/constant/app_dimensions.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationController controller = Get.find();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.gradientStartColor,
                AppColors.gradientEndColor,
              ],
            ),
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            AppAssets.arrowLeft,
            height: AppDimensions.iconSize,
            width: AppDimensions.iconSize,
          ),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.titleText),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.notifications.isEmpty) {
            return const Center(child: Text('No notifications available.'));
          }

          return ListView.builder(
            itemCount: controller.notifications.length,
            itemBuilder: (context, index) {
              final notification = controller.notifications[index];
              return NotificationCard(
                notification: notification,
              );
            },
          );
        }),
      ),
    );
  }
}
