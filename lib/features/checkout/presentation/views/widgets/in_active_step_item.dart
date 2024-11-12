import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 10,
          backgroundColor: Color(0xFFF2F3F3),
          child: Text(
            '2',
            style: TextStyles.semiBold13,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          'الشحن',
          style: TextStyles.semiBold13.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        )
      ],
    );
  }
}
