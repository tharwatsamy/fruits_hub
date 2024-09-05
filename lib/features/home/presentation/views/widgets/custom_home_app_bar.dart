import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/get_user.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const NotificationWidget(),
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: const Color(0xFF949D9E),
        ),
      ),
      subtitle: Text(
        getUser().name,
        textAlign: TextAlign.right,
        style: TextStyles.bold16,
      ),
    );
  }
}
