import 'package:flutter/material.dart';
import 'package:vodafone_ui/shared/app_styles.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({
    super.key,
    required this.leading,
    this.trailing,
    required this.title,
    required this.subtitle,
  });

  final Widget leading;
  final Widget? trailing;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // horizontalTitleGap: 8,
      contentPadding: const EdgeInsets.only(
        right: 16,
        left: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(
          color: Color(0xffF7F7F7),
          width: 1,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFF7F7F5),
        child: leading,
      ),
      trailing: trailing ??
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
      title: Text(
        title,
        style: AppStyles().cardTitle,
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles().cardSubtitle,
      ),
    );
  }
}
