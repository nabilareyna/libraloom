import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WScaffold.dart';
import 'package:libraloom/module/notification_page/component/notification_card.dart';
import 'package:libraloom/module/notification_page/controller/c_notification_page.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class NotificationPage extends GetView<CNotificationPage> {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      title: "Notification",
      leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.homepage);
          },
          icon: Icon(
            Icons.chevron_left_sharp,
            size: 36,
          )),
      body: (context, orientation, platform) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Const.parentMargin()),
            child: Column(
              children: [
                NotificationCard(
                  user: "Leonaldo Dayuki (Admin)",
                  description: "Your loan has been successful, please return it on time (01-20-2024)",
                  timestamp: "5 minutes ago",
                ),
                NotificationCard(
                  user: "Leonaldo Dayuki (Admin)",
                  description: "Your loan has been successful, please return it on time (01-20-2024)",
                  timestamp: "5 minutes ago",
                ),
                NotificationCard(
                  user: "Leonaldo Dayuki (Admin)",
                  description: "Your loan has been successful, please return it on time (01-20-2024)",
                  timestamp: "5 minutes ago",
                ),
                NotificationCard(
                  user: "Leonaldo Dayuki (Admin)",
                  description: "Your loan has been successful, please return it on time (01-20-2024)",
                  timestamp: "5 minutes ago",
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
