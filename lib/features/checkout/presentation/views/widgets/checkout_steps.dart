import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/in_active_step_item.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/step_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/active_item.dart';
import 'package:provider/provider.dart';

import '../../../domain/entites/order_entity.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps(
      {super.key,
      required this.currentPageIndex,
      required this.pageController});

  final int currentPageIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(getSteps().length, (index) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              var orderEntity = context.read<OrderEntity>();
              if (context.read<OrderEntity>().payWithCash != null) {
                pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              } else {
                showBar(context, 'يرجي تحديد طريقه الدفع');
              }
            },
            child: StepItem(
              isActive: index <= currentPageIndex,
              index: (index + 1).toString(),
              text: getSteps()[index],
            ),
          ),
        );
      }),
    );
  }
}

List<String> getSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',
  ];
}
