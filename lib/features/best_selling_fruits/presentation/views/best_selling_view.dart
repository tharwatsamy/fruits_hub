import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';
import 'package:fruits_hub/features/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = 'best_selling_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الأكثر مبيعًا'),
      body: const BestSellingViewBody(),
    );
  }
}
