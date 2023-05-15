import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../datamodels/product.dart';
import '../../../services/data_service.dart';

class ProductGalleryViewModel extends BaseViewModel {
  late int _index;

  final _dataService = locator<DataService>();

  late String _mainImage;
  late String _imagePreview1;
  late String _imagePreview2;
  late String _imagePreview3;
  late String _imagePreview4;

  set setIndex(int value) {
    _index = value;
    print('This is the Product Index: $_index');
    rebuildUi();
  }

  String get mainImage => _mainImage;
  String get imagePreview1 => _imagePreview1;
  String get imagePreview2 => _imagePreview2;
  String get imagePreview3 => _imagePreview3;
  String get imagePreview4 => _imagePreview4;

  Product get productInformation => _dataService.products[_index];

  void startUpLogic() {
    _mainImage = productInformation.fullImageURL!;
    _imagePreview1 =
        'assets/images/femaleGreenShirt-CV.png'; //productInformation.imageURL;
    _imagePreview2 =
        'assets/images/femaleGreenShirt-CV.png'; //productInformation.imageURL;
    _imagePreview3 =
        'assets/images/femaleGreenShirt-CV.png'; //productInformation.imageURL;
    _imagePreview4 =
        'assets/images/femaleGreenShirt-CV.png'; //productInformation.imageURL;

    print(_mainImage);
    print(_imagePreview1);
    print(_imagePreview2);
    print(_imagePreview3);
    print(_imagePreview4);
  }
}
