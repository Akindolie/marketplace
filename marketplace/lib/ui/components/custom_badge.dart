import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeContent: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 12, height: 0),
      ),
      badgeStyle: const badges.BadgeStyle(
        badgeColor: kBadgeColor,
        shape: badges.BadgeShape.circle,
        //borderRadius: BorderRadius.circular(5),
        //padding: const EdgeInsets.all(4),
      ),
      child: Icon(
        icon,
        size: 26,
        color: kcDarkGreyColor,
        weight: 600,
        grade: 200,
      ),
    );
  }
}
