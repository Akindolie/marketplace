import 'package:flutter/material.dart';

import '../common/text_styles.dart';
import '../common/ui_helpers.dart';

class LabelledContainer extends StatelessWidget {
  const LabelledContainer({
    super.key,
    required this.label,
    required this.child,
    this.laggingWidget,
  });

  final String label;
  final Widget child;
  final Widget? laggingWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$label:',
              textAlign: TextAlign.start,
              style: kTextHeadingBlack18.copyWith(fontSize: 16),
            ),
            if (laggingWidget != null) laggingWidget!,
          ],
        ),
        verticalSpaceMedium,
        child,
      ],
    );
  }
}
