import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common/app_colors.dart';
import '../common/text_styles.dart';
import '../common/ui_helpers.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    super.key,
    required this.onTap,
    required this.cartItemCount,
  });

  final VoidCallback onTap;
  final String cartItemCount;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: screenWidth(context) * 0.5,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // height: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    color: kcPrimaryColor),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Iconsax.bag_2,
                      color: Colors.white,
                      size: 21,
                    ),
                    horizontalSpaceSmall,
                    Text(
                      cartItemCount,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: kcPrimaryColorDark,
                ),
                child: Center(
                  child: Text(
                    'Buy Now',
                    textAlign: TextAlign.center,
                    style: kTextSubHeadingGrey14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
