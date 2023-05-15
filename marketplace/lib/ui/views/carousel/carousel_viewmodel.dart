import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/app/app.locator.dart';
import 'package:marketplace/services/data_service.dart';
import 'package:stacked/stacked.dart';

final _dataService = locator<DataService>();

class CarouselViewModel extends BaseViewModel {
  int _current = 0;

  List get carouselImages => _dataService.imgList;

  int get current => _current;

  set updateCurrent(int value) {
    _current = value;
    rebuildUi();
  }

  final CarouselController controller = CarouselController();

  final List<Widget> imageSliders = _dataService.imgList
      .map(
        (item) => Image.asset(item, fit: BoxFit.fill),
      )
      .toList();
}
