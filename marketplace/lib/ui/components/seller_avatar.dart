import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class SellerAvatar extends StatelessWidget {
  const SellerAvatar({
    super.key,
    required this.sellerName,
  });

  final String sellerName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: kcVeryLightGrey,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          sellerName,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            //overflow: TextOverflow.ellipsis,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
