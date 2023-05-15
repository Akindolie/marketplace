import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/ui_helpers.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
  });

  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 0.8, color: kcPrimaryColor),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              size: 18,
              color: kcPrimaryColor,
            ),
          horizontalSpaceSmall,
          Text(
            label,
            style: const TextStyle(
                color: kcPrimaryColor, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
