import 'package:flutter/material.dart';
import 'package:vodafone_ui/shared/extensions/widget_extensions.dart';

class HomeGridItem extends StatelessWidget {
  const HomeGridItem({
    super.key,
    required this.icon,
    this.title,
    this.subtitle,
  });

  final Widget icon;
  final Widget? title;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFB),
        border: Border.all(
          color: const Color(0xFFF3F3F3),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          const Spacer(),
          title ?? const SizedBox(),
          4.0.sbH,
          subtitle ?? const SizedBox(),
        ],
      ),
    );
  }
}
