import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common/app_colors.dart';
import '../common/ui_helpers.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.type,
    required this.desc,
    required this.price,
    required this.isFav,
    required this.reviewsCount,
    required this.rating,
    required this.imageURL,
    required this.onTap,
  });

  final String type;
  final String desc;
  final String price;
  final bool isFav;
  final int reviewsCount;
  final double rating;
  final String imageURL;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          //alignment: Alignment.center,
          //width: screenWidth(context) * 0.6,
          decoration: const BoxDecoration(
              //color: Colors.teal[100 * (index % 9)],
              //border: Border.all(width: 1, color: kcMediumGrey),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  //height: 150,
                  width: double.infinity,
                  color: kcVeryLightGrey,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        imageURL, // 'assets/images/green-shirt.png',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        child: isFav
                            ? const Icon(
                                Iconsax.heart5,
                                size: 18,
                                color: kBadgeColor,
                              )
                            : const Icon(
                                Iconsax.heart,
                                size: 18,
                              ),
                        top: 10,
                        right: 10,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            type,
                            style: const TextStyle(
                                fontSize: 12,
                                color: kcLightGrey,
                                fontWeight: FontWeight.w600),
                            //textAlign: TextAlign.justify,
                          ),
                          Text(
                            desc,
                            style: const TextStyle(
                                fontSize: 12,
                                color: kcDarkGreyColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Iconsax.star_15,
                                  size: 14,
                                  color: Colors.amber,
                                ),
                                horizontalSpaceTiny,
                                Text(
                                  '$rating | $reviewsCount',
                                  style: const TextStyle(
                                      fontSize: 11,
                                      color: kcLightGrey,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            //horizontalSpaceMedium,
                            Text(
                              '\$$price',
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: kcPrimaryColor,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
