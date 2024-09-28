import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          iconColor: Colors.white,
          icon: Icons.add,
          color: AppColors.primaryColor,
          onPressed: () {},
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '3',
            textAlign: TextAlign.center,
            style: TextStyles.bold16,
          ),
        ),
        CartItemActionButton(
          iconColor: Colors.grey,
          icon: Icons.remove,
          color: const Color(0xFFF3F5F7),
          onPressed: () {},
        )
      ],
    );
  }
}

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.onPressed,
      required this.iconColor});

  final IconData icon;
  final Color iconColor;
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      padding: const EdgeInsets.all(
        2,
      ),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: FittedBox(
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
