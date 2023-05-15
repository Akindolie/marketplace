import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/ui_helpers.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kcExtremelyLightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon, //Iconsax.category,
              color: kcMediumGrey,
            ),
          ),
          verticalSpaceTiny,
          Text(
            label, //'Category',
            style: const TextStyle(
                fontSize: 12,
                color: kcSemiMediumGrey,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
