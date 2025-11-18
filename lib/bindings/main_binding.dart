import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/list_api_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/login_api_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/main_controller.dart';
class MainBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut <MainController>(() => MainController());
    Get.lazyPut <LoginApiController>(() => LoginApiController());
    Get.lazyPut<LoginApiController>(() =>LoginApiController());
    Get.put(ListApiController());
  }
  
}