import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/main_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/favorite_page.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/list_api_page.dart';
import 'package:pas_mobile_11_pplg_1_33/pages/profile_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final controller = Get.find<MainController>();

  final List<Widget> pages = [
    ListApiPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[controller.selectedIndex.value],
        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changePage,

          backgroundColor: const Color.fromARGB(255, 229, 129, 15), 
          
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 8,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Store List",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
