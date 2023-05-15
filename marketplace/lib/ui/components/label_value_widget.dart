import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/text_styles.dart';
import '../common/ui_helpers.dart';

class LabelValueWidget extends StatelessWidget {
  const LabelValueWidget({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$label:',
          style: const TextStyle(color: kcSemiMediumGrey),
        ),
        horizontalSpaceSmall,
        Text(
          value,
          style: kTextSubHeadingGrey14.copyWith(
              color: kcDarkGreyColor,
              fontSize: 13.5,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
