import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common/app_colors.dart';
import '../common/text_styles.dart';
import '../common/ui_helpers.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      height: 45,
      width: screenWidth(context) * 0.65,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: kcLightGrey,
            width: 0.9,
            strokeAlign: BorderSide.strokeAlignCenter),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search...',
          hintStyle: kTextLabelRegularSize12.copyWith(
              color: kcLightGrey, fontSize: 14),
          icon: const Icon(
            Iconsax.search_normal,
            color: kcLightGrey,
          ),
        ),
      ),
    );
  }
}
