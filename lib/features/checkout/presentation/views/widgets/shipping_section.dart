import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 33,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 0;
            setState(() {});
          },
          isSelected: selectedIndex == 0,
          title: 'الدفع عند الاستلام',
          subTitle: 'التسليم من المكان',
          price: '40',
        ),
        const SizedBox(
          height: 16,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 1;
            setState(() {});
          },
          isSelected: selectedIndex == 1,
          title: 'الدفع اونلاين',
          subTitle: 'يرجي تحديد طريقه الدفع',
          price: '40',
        ),
      ],
    );
  }
}
