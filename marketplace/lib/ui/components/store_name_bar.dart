import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common/app_colors.dart';
import '../common/ui_helpers.dart';

class StoreNameBar extends StatelessWidget {
  const StoreNameBar({
    super.key,
    required this.storeName,
  });

  final String storeName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Iconsax.shop,
          size: 18,
          color: kcSemiMediumGrey,
          weight: 200,
        ),
        horizontalSpaceSmall,
        Text(
          storeName,
          style: const TextStyle(
              fontWeight: FontWeight.normal, color: kcSemiMediumGrey),
        )
      ],
    );
  }
}
