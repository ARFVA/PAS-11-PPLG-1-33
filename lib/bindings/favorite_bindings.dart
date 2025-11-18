import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/favorite_list_controller.dart';

class FavoriteBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritesController>(() =>FavoritesController());
  }
}