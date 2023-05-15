import 'package:marketplace/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../datamodels/product.dart';
import '../../../services/data_service.dart';

class ProductDetailsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dataService = locator<DataService>();

  void goBack() {
    _navigationService.back();
  }

  List<Product> get products => _dataService.products;

  void gotoProductDetails(int index) {
    _navigationService.navigateToProductDetailsView(index: index);
  }
}
