import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../components/small_image_preview_box.dart';
import 'product_gallery_viewmodel.dart';

class ProductGalleryView extends StackedView<ProductGalleryViewModel> {
  const ProductGalleryView(this.productIndex, {Key? key}) : super(key: key);

  final int productIndex;

  @override
  Widget builder(
    BuildContext context,
    ProductGalleryViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: screenHeight(context) * 0.45,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kLighterGreyShade, //kcExtremelyLightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Container(
                height: double.infinity,
                width: screenWidth(context) * 0.65,

                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    //fit: BoxFit.fitHeight,
                    image: AssetImage(viewModel.mainImage),
                  ),
                ),
                // child: Image.asset(
                //   'assets/images/femaleGreenShirt-FV.png',
                //   fit: BoxFit.fill,
                //   height: double.infinity,
                // ),
              )
                  .animate()
                  .fadeIn() // uses `Animate.defaultDuration`
                  .scale() // inherits duration from fadeIn
                  .move(
                      delay: 300.ms,
                      duration: 600.ms) // runs after the above w/new duration
              // inherits the delay & duration from move,
              ),
          Positioned(
            left: 20,
            top: 20,
            child: Column(
              children: [
                SmallImagePreviewBox(
                  imageURL: viewModel.imagePreview1,
                  delay: 900,
                ),
                verticalSpaceSmall,
                SmallImagePreviewBox(
                  imageURL: viewModel.imagePreview2,
                  delay: 950,
                ),
                verticalSpaceSmall,
                SmallImagePreviewBox(
                  imageURL: viewModel.imagePreview3,
                  delay: 1000,
                ),
                verticalSpaceSmall,
                SmallImagePreviewBox(
                  imageURL: viewModel.imagePreview4,
                  delay: 1050,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  ProductGalleryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductGalleryViewModel();

  @override
  void onViewModelReady(ProductGalleryViewModel viewModel) {
    // TODO: implement onViewModelReady
    viewModel.setIndex = productIndex;
    print(viewModel.productInformation.imageURL);
    viewModel.startUpLogic();
    super.onViewModelReady(viewModel);
  }
}
