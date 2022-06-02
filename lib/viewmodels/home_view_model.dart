import 'package:stacked/stacked.dart';

import '../core/utils/datas.dart';
import '../models/product_model.dart';

class HomeViewModel extends BaseViewModel {
  List<ProductModel> allProduct = [];

  void init(String type) {
    switch (type) {
      case 'Apparel':
        allProduct = products;
        break;
      case 'Dress':
        allProduct = dress;
        break;
      case 'Tshirt':
        allProduct = tshirts;
        break;
      case 'Accessory':
        allProduct = accessories;
        break;
      default:
    }
    notifyListeners();
  }
}
