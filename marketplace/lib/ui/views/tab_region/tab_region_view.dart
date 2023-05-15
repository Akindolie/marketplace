import 'package:flutter/material.dart';
import 'package:marketplace/ui/common/app_colors.dart';
import 'package:marketplace/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../components/label_value_widget.dart';
import 'tab_region_viewmodel.dart';

class TabRegionView extends StackedView<TabRegionViewModel> {
  const TabRegionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TabRegionViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 2,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(height: 150),
        child: Column(
          children: [
            const TabBar(
              labelColor: kcPrimaryColor,
              indicatorColor: kcPrimaryColor,
              unselectedLabelStyle: TextStyle(fontSize: 16),
              labelStyle: TextStyle(fontSize: 16),
              unselectedLabelColor: kcSemiMediumGrey,
              tabs: [
                Tab(
                  text: 'About Item',
                ),
                Tab(
                  text: 'Reviews',
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        horizontal:
                            BorderSide(color: kcVeryLightGrey, width: 0.5),
                      ),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LabelValueWidget(
                                  label: 'Brand',
                                  value: 'ChArmkpR',
                                ),
                                verticalSpaceSmall,
                                LabelValueWidget(
                                  label: 'Category',
                                  value: 'Causual Shirt',
                                ),
                                verticalSpaceSmall,
                                LabelValueWidget(
                                  label: 'Condition',
                                  value: 'New',
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LabelValueWidget(
                                  label: 'Color',
                                  value: 'Aprikot',
                                ),
                                verticalSpaceSmall,
                                LabelValueWidget(
                                  label: 'Material',
                                  value: 'Polyester',
                                ),
                                verticalSpaceSmall,
                                LabelValueWidget(
                                  label: 'Heavy',
                                  value: '200g',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text('2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  TabRegionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TabRegionViewModel();
}
