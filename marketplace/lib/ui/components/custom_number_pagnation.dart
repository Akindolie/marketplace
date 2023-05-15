import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/ui_helpers.dart';

class CustomNumberPagnation extends StatelessWidget {
  const CustomNumberPagnation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: kcSemiMediumGrey.withOpacity(0.2), shape: BoxShape.circle),
          child: const Icon(Icons.chevron_left),
        ),
        horizontalSpaceMedium,
        const Text(
          '1',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        horizontalSpaceMedium,
        const Text(
          '2',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        horizontalSpaceMedium,
        const Text(
          '3',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        horizontalSpaceMedium,
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: kcSemiMediumGrey.withOpacity(0.2), shape: BoxShape.circle),
          child: const Icon(Icons.chevron_right),
        ),
        const Spacer(),
        const Text('See more',
            style: TextStyle(
                fontSize: 12,
                color: kcPrimaryColor,
                fontWeight: FontWeight.w600))
      ],
    );
  }
}
