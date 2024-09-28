import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item.dart';

class CarItemsList extends StatelessWidget {
  const CarItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        separatorBuilder: (context, index) => const CustomDivider(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CartItem(),
          );
        });
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFF1F1F5),
      height: 22,
    );
  }
}
