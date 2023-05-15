import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class ProductsTitleBar extends StatelessWidget {
  const ProductsTitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: kcExtremelyLightGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Best Sale Product',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: kcDarkGreyColor,
                fontFamily: 'Satoshi'),
          ),
          InkWell(
            child: Text(
              'See more',
              style: TextStyle(
                  fontSize: 14, color: kcPrimaryColor, fontFamily: 'Satoshi'),
            ),
          ),
        ],
      ),
    );
  }
}
