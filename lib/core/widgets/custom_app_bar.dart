import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

import '../utils/app_text_styles.dart';

AppBar buildAppBar(context, {required String title , bool showBackButton = true}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      )
    ],
    leading: Visibility(
      visible: showBackButton,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
