import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: kTopPaddding,
                ),
                buildAppBar(
                  context,
                  title: 'السلة',
                  showNotification: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CartHeader(),
                const SizedBox(
                  height: 12,
                ),
                const CartItem()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
