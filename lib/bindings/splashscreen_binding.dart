import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/login_api_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/splashscreen_controller.dart';

class SplashcreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut <SplashscreenController>(() => SplashscreenController());
    Get.lazyPut<LoginApiController>(() => LoginApiController());
  }
}