import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common/text_styles.dart';
import '../common/ui_helpers.dart';

class ProductPerformanceBar extends StatelessWidget {
  const ProductPerformanceBar({
    super.key,
    required this.rating,
    required this.reviewCount,
    required this.amountSold,
  });

  final double rating;
  final double reviewCount;
  final double amountSold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Iconsax.star_15,
              size: 18,
              color: Colors.amber,
            ),
            horizontalSpaceTiny,
            Text(
              '$rating Ratings',
              style: kTextSubHeadingGrey14,
            )
          ],
        ),
        uiDot(),
        Text(
          '${reviewCount}k+ Reviews',
          style: kTextSubHeadingGrey14,
        ),
        uiDot(),
        Text(
          '${amountSold}k+ Sold',
          style: kTextSubHeadingGrey14,
        ),
      ],
    );
  }
}
