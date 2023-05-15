import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/ui/common/app_colors.dart';
import 'package:marketplace/ui/views/tab_region/tab_region_view.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:stacked/stacked.dart';

import '../../common/text_styles.dart';
import '../../common/ui_helpers.dart';
import '../../components/buy_button.dart';
import '../../components/custom_badge.dart';
import '../../components/custom_outlined_button.dart';
import '../../components/label_value_widget.dart';
import '../../components/labelled_container.dart';
import '../../components/product_card.dart';
import '../../components/product_performance_bar.dart';
import '../../components/seller_avatar.dart';
import '../../components/store_name_bar.dart';
import '../../components/unordered_list.dart';
import '../product_gallery/product_gallery_view.dart';
import '../review_widget/review_widget_view.dart';
import 'product_details_viewmodel.dart';

class ProductDetailsView extends StackedView<ProductDetailsViewModel> {
  const ProductDetailsView(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget builder(
    BuildContext context,
    ProductDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kPageBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          onPressed: () => viewModel.goBack(),
          icon: const Icon(Icons.arrow_back_ios),
          //replace with our own icon data.
        ),
        actions: const [
          Icon(Iconsax.heart),
          horizontalSpaceMedium,
          Icon(Icons.share_outlined),
          horizontalSpaceMedium,
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: CustomBadge(
              label: '2',
              icon: Iconsax.bag_2,
            ),
          ),
          horizontalSpaceMedium,
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, screenHeight(context) * 0.1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductGalleryView(index),
              verticalSpaceMedium,
              const StoreNameBar(
                storeName: 'tokobaju.id',
              ),
              verticalSpaceSmall,
              const Text(
                'Essentials Men\'s Short-Sleeve Crewneck T-Shirt',
                style: kTextHeadingBlack18,
              ),
              verticalSpaceMedium,
              const ProductPerformanceBar(
                rating: 4.9,
                reviewCount: 2.3,
                amountSold: 2.9,
              ),
              verticalSpaceMedium,
              const TabRegionView(),
              verticalSpaceMedium,
              const LabelledContainer(
                label: 'Description',
                child: ExpandChild(
                  collapsedVisibilityFactor: 0.5,
                  indicatorAlignment: Alignment.centerLeft,
                  indicatorCollapsedHint: 'See more',
                  indicatorExpandedHint: 'See less',
                  indicatorHintTextStyle: TextStyle(
                      color: kcPrimaryColor, fontWeight: FontWeight.w600),
                  expandIndicatorStyle: ExpandIndicatorStyle.both,
                  capitalizeIndicatorHintText: false,
                  child: UnorderedList(
                    [
                      "Long-sleeve dress shirt in classic fit featuring button-down collar",
                      "Patch pocket on left chest",
                      "Durable combination cotton fabric",
                      "Comfortable and quality dress shirt",
                      "Go To Classic button down shirt for all special occasions "
                    ],
                    extraNonListText:
                        'Chat is if there is anything you need to ask about the product ',
                  ),
                ),
              ),
              verticalSpaceMedium,
              horizontalLine(double.infinity),
              verticalSpaceMedium,
              LabelledContainer(
                label: 'Shippings Information',
                child: Column(
                  children: const [
                    LabelValueWidget(
                      label: 'Delivery',
                      value: 'Shipping from Jakarta, Indonesia',
                    ),
                    verticalSpaceMedium,
                    LabelValueWidget(
                      label: 'Shipping',
                      value: 'FREE International Shipping',
                    ),
                    verticalSpaceMedium,
                    LabelValueWidget(
                      label: 'Arrive',
                      value: 'Estimated Arrival on 25 -27 Oct 2022',
                    ),
                  ],
                ),
              ),
              verticalSpaceMedium,
              horizontalLine(double.infinity),
              verticalSpaceMedium,
              LabelledContainer(
                label: 'Seller Information',
                child: Row(
                  children: [
                    const SellerAvatar(
                      sellerName: 'Thrifting Store',
                    ),
                    horizontalSpaceMedium,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Thrifting_Store',
                          style: kTextSubHeadingGrey14.copyWith(
                              color: kcDarkGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        verticalSpaceTiny,
                        Text(
                          'vbdvbjbfjf | vdjvhdvcd',
                          style: kTextSubHeadingGrey14.copyWith(
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        verticalSpaceTiny,
                        CustomOutlinedButton(
                          label: 'View store',
                          onPressed: () {},
                          icon: Iconsax.shop,
                        )
                      ],
                    )
                  ],
                ),
              ),
              verticalSpaceMedium,
              horizontalLine(double.infinity),
              verticalSpaceMedium,
              const LabelledContainer(
                label: 'Reviews & Ratings',
                child: RatingSummary(
                  counter: 13,
                  average: 4.846,
                  showAverage: true,
                  counterFiveStars: 5,
                  counterFourStars: 4,
                  counterThreeStars: 2,
                  counterTwoStars: 1,
                  counterOneStars: 1,
                  color: kcPrimaryColor,
                ),
              ),
              verticalSpaceMedium,
              horizontalLine(double.infinity),
              verticalSpaceMedium,
              LabelledContainer(
                label: 'Reviews with images & videos',
                child: SizedBox(
                  height: 70,
                  child: ListView.builder(
                    itemCount: 10,
                    //shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      child: Container(
                        // height: 35, //screenHeight(context) * 0.05,
                        width: 70, //screenWidth(context) * 0.11,
                        decoration: BoxDecoration(
                          color: index == 10 - 1
                              ? Colors.black.withOpacity(0.75)
                              : kcVeryLightGrey,
                          borderRadius: BorderRadius.circular(10),
                          // image: DecorationImage(
                          //   fit: BoxFit.cover,
                          //   image: AssetImage(
                          //     imageURL,
                          //   ),
                          // ),
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset(
                              'assets/images/pinkSweatShirt-FV.png',
                              fit: BoxFit.scaleDown,
                            ),
                            if (index == 10 - 1)
                              const Positioned(
                                // left: 0,
                                top: 25,
                                child: Text(
                                  '132+',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                              ),
                          ],
                        ),
                      ).animate().fade(duration: 500.ms).scale(delay: 700.ms),
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              horizontalLine(double.infinity),
              verticalSpaceMedium,
              const LabelledContainer(
                label: 'Top Reviews',
                child: ReviewWidgetView(),
              ),
              verticalSpaceMedium,
              horizontalLine(double.infinity),
              verticalSpaceMedium,
              LabelledContainer(
                label: 'Recommendations',
                laggingWidget: const InkWell(
                  child: Text(
                    'see more',
                    style: TextStyle(color: kcPrimaryColor),
                  ),
                ),
                child: SizedBox(
                  height: 400,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    //padding: EdgeInsets.zero,
                    //shrinkWrap: true,
                    children: List.generate(
                      viewModel.products.length,
                      (index) => ProductCard(
                        type: viewModel.products[index].type,
                        desc: viewModel.products[index].desc,
                        price: viewModel.products[index].price,
                        isFav: viewModel.products[index].isFav,
                        reviewsCount: viewModel.products[index].reviewsCount,
                        rating: viewModel.products[index].rating,
                        imageURL: viewModel.products[index].imageURL,
                        onTap: () => viewModel.gotoProductDetails(index),
                      ),
                    ),
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 10.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SizedBox(
          height: screenHeight(context) * 0.1,
          // color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total Price',
                    style: TextStyle(
                        fontSize: 12,
                        color: kcSemiMediumGrey,
                        fontWeight: FontWeight.w600),
                  ),
                  verticalSpaceTiny,
                  Text(
                    '\$18.00',
                    style: kTextHeadingBlack18.copyWith(
                        color: kcPrimaryColor, fontSize: 22),
                  ),
                ],
              ),
              BuyButton(
                onTap: () {},
                cartItemCount: '2',
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProductDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductDetailsViewModel();
}
