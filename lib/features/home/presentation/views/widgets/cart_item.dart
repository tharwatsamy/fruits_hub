import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_network_image.dart';
import 'package:fruits_hub/features/home/domain/entites/car_item_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item_action_buttons.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.carItemEntity});

  final CarItemEntity carItemEntity;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: const BoxDecoration(color: Color(0xFFF3F5F7)),
            child: const CustomNetworkImage(
              imageUrl: 'https://via.placeholder.com/53x40',
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'بطيخ',
                      style: TextStyles.bold13,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        Assets.imagesTrash,
                      ),
                    )
                  ],
                ),
                Text(
                  '3 كم',
                  textAlign: TextAlign.right,
                  style: TextStyles.regular13.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                Row(
                  children: [
                    const CartItemActionButtons(),
                    const Spacer(),
                    Text(
                      '60 جنيه ',
                      style: TextStyles.bold16
                          .copyWith(color: AppColors.secondaryColor),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
