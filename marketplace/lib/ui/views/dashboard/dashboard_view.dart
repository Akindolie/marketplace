import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import '../../components/product_card.dart';
import '../../components/product_title_bar.dart';
import '../../components/quick_links.dart';
import '../../components/search_bar.dart';
import '../carousel/carousel_view.dart';
import 'dashboard_viewmodel.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    var size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: kcExtremelyLightGrey,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: screenHeight(context) * 0.55,
              backgroundColor: Colors.white,
              elevation: 0,
              titleSpacing: 0,
              toolbarHeight: 100,
              collapsedHeight: 150,
              pinned: true,
              title: const SearchBar(),
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.none,
                titlePadding: EdgeInsets.zero,
                expandedTitleScale: 1,
                title: const ProductsTitleBar(),
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CarouselView(),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        QuickLinks(
                          label: 'Category',
                          icon: Iconsax.category,
                        ),
                        QuickLinks(
                          label: 'Flight',
                          icon: Iconsax.airplane,
                        ),
                        QuickLinks(
                          label: 'Bill',
                          icon: Iconsax.clipboard_text,
                        ),
                        QuickLinks(
                          label: 'Data plan',
                          icon: Iconsax.global,
                        ),
                        QuickLinks(
                          label: 'Top Up',
                          icon: Iconsax.coin,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ProductCard(
                      type: viewModel.products[index].type,
                      desc: viewModel.products[index].desc,
                      price: viewModel.products[index].price,
                      isFav: viewModel.products[index].isFav,
                      reviewsCount: viewModel.products[index].reviewsCount,
                      rating: viewModel.products[index].rating,
                      imageURL: viewModel.products[index].imageURL,
                      onTap: () => viewModel.gotoProductDetails(index),
                    );
                  },
                  childCount: viewModel.products.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashboardViewModel();
}
