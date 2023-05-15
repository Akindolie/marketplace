import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import '../../components/comments_tag.dart';
import '../../components/custom_number_pagnation.dart';
import 'review_widget_viewmodel.dart';

class ReviewWidgetView extends StackedView<ReviewWidgetViewModel> {
  const ReviewWidgetView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ReviewWidgetViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Showing 5 out of 2.9k+ reviews',
              style: TextStyle(fontSize: 13, color: kcSemiMediumGrey),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: kcVeryLightGrey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  focusColor: Colors.white,
                  dropdownColor: Colors.white,
                  icon: Icon(Iconsax.arrow_down_1),
                  value: 'Popular',
                  items: [
                    'Popular',
                    'Recently posted',
                    'Top rated',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        verticalSpaceMedium,
        SizedBox(
          height: 300,
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: kcVeryLightGrey,
                              radius: 18,
                              backgroundImage: AssetImage(
                                  'assets/images/profilePicture.jpg'),
                              // Image.asset(
                              //   'assets/images/pinkSweatShirt-CV.png',
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            horizontalSpaceSmall,
                            Text(
                              'Eddie Murphy',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Iconsax.star_15,
                              size: 18,
                              color: Colors.amber,
                            ),
                            horizontalSpaceSmall,
                            Text(
                              '5.0',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            horizontalSpaceSmall,
                            Icon(
                              Iconsax.more,
                              color: kcSemiMediumGrey,
                            )
                          ],
                        )
                      ],
                    ),
                    verticalSpaceMedium,
                    Row(
                      children: const [
                        Expanded(
                          child: CommentsTag(
                            label: 'suscipit nec scelerisque',
                          ),
                        ),
                        horizontalSpaceTiny,
                        Expanded(
                          child: CommentsTag(
                            label: 'rutrum dftg',
                          ),
                        ),
                        horizontalSpaceTiny,
                        Expanded(
                          child: CommentsTag(
                            label: 'aliquam a quam',
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMedium,
                    const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Iconsax.like_15,
                              color: kcPrimaryColor,
                              size: 18,
                            ),
                            horizontalSpaceSmall,
                            Text(
                              'Helpful?',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kcPrimaryColor,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        const Text(
                          'Yesterday',
                          style: TextStyle(
                              fontSize: 12,
                              color: kcSemiMediumGrey,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return horizontalLine(double.infinity);
              },
              itemCount: 5),
        ),
        verticalSpaceMedium,
        const CustomNumberPagnation()
      ],
    );
  }

  @override
  ReviewWidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ReviewWidgetViewModel();
}
