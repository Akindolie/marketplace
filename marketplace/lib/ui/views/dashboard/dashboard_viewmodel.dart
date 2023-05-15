import 'package:marketplace/app/app.router.dart';
import 'package:marketplace/services/data_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../datamodels/product.dart';

class DashboardViewModel extends BaseViewModel {
  final _dataService = locator<DataService>();
  final _navigationService = locator<NavigationService>();

  List<Product> get products => _dataService.products;

  void gotoProductDetails(int index) {
    _navigationService.navigateToProductDetailsView(index: index);
  }
}
