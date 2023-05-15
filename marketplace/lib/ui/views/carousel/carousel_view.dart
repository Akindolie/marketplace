import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'carousel_viewmodel.dart';

class CarouselView extends StackedView<CarouselViewModel> {
  const CarouselView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CarouselViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        CarouselSlider(
          items: viewModel.imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              viewportFraction: 1,
              height: screenHeight(context) * 0.4,
              onPageChanged: (index, reason) =>
                  viewModel.updateCurrent = index),
        ),
        Positioned(
          right: 10,
          bottom: screenHeight(context) * 0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: viewModel.carouselImages.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => viewModel.controller.animateToPage(entry.key),
                child: Container(
                  width: viewModel.current == entry.key ? 13.0 : 6,
                  height: 4,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(10),
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(
                              viewModel.current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  @override
  CarouselViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CarouselViewModel();
}
