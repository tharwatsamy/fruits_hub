import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../utils/app_images.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const ShapeDecoration(
        color: Color(0xFFEEF8ED),
        shape: OvalBorder(),
      ),
      child: SvgPicture.asset(Assets.imagesNotification),
    );
  }
}
