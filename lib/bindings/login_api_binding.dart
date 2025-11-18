import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/login_api_controller.dart';
class LoginApiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginApiController>(() =>LoginApiController());
  }
}