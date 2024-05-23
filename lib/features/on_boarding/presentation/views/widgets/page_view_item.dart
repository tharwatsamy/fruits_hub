import 'package:flutter/material.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title});

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
