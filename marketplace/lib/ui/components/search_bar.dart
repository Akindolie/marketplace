import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common/ui_helpers.dart';
import 'custom_badge.dart';
import 'custom_search_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          CustomSearchField(),
          horizontalSpaceSmall,
          CustomBadge(
            label: '2',
            icon: Iconsax.bag_2,
          ),
          horizontalSpaceSmall,
          CustomBadge(
            label: '8',
            icon: Iconsax.message,
          ),
        ],
      ),
    );
  }
}
