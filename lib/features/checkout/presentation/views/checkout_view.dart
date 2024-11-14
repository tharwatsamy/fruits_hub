import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruits_hub/features/home/domain/entites/car_item_entity.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartItems});

  static const routeName = 'checkout';
  final List<CartItemEntity> cartItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'الشحن',
        showNotification: false,
      ),
      body: const CheckoutViewBody(),
    );
  }
}
