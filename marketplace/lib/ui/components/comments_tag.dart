import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class CommentsTag extends StatelessWidget {
  const CommentsTag({
    super.key,
    required this.label,
  });

  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(
          color: kcSemiMediumGrey,
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
        borderRadius: BorderRadius.circular(20),
        color: kcPrimaryColorLight,
      ),
      child: Text(
        label,
        style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: kcPrimaryColor,
            fontSize: 13,
            overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
