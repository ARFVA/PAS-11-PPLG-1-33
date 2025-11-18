import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/routes/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController {
@override
void onInit() {
  super.onInit();
  Future.delayed(const Duration(seconds: 2), () {
    checkLoginStatus();
  });
}
void checkLoginStatus() async {
  await Future.delayed(const Duration(milliseconds: 800));
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString("token"); 

  if (token != null && token.isNotEmpty) {
    print('Auto login (normal) with token: $token');
    Get.offAllNamed(AppRoutes.main);
    return;
  }

  Get.offAllNamed(AppRoutes.login);
}

}