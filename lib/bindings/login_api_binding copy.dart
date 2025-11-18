import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/list_api_controller.dart';

class ListApibindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ListApiController());
  }
}