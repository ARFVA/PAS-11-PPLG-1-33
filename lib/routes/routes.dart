import 'package:get/route_manager.dart';
import 'package:pas_mobile_11_pplg_1_33/bindings/login_api_binding%20copy.dart';
import 'package:pas_mobile_11_pplg_1_33/bindings/login_api_binding.dart';
import 'package:pas_mobile_11_pplg_1_33/bindings/main_binding.dart';
import 'package:pas_mobile_11_pplg_1_33/bindings/splashscreen_binding.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/bottomnav_page.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/favorite_page.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/list_api_page.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/login_api.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/profile_page.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/register_page.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/splashscreen_page.dart';
import 'package:pas_mobile_11_pplg_1_33/routes/pages.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginApiPage(),
      bindings: [LoginApiBinding()],
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashscreenPage(),
      bindings: [SplashcreenBindings()],
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainPage(),
      bindings: [MainBinding()],
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
      bindings: [LoginApiBinding()],
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterPage(),
      bindings: [LoginApiBinding()],
    ),
    GetPage(
      name: AppRoutes.favorite,
      page: () => FavoritePage(),
      bindings: [ListApibindings()],
    ),
    GetPage(
      name: AppRoutes.listapi,
      page: () => ListApiPage(),
      bindings: [ListApibindings()],
    ),
  ];
}