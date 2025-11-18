import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/favorite_list_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_card.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_text.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final favController = Get.find<FavoritesController>();

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Favorite List",
          size: 20,
          weight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFE5810F),
      ),
      backgroundColor: const Color.fromARGB(255, 243, 215, 184),
      body: Obx(() {
        if (favController.favorites.isEmpty) {
          return const Center(
            child: CustomText(
              text: "Tidak ada Favorite",
              size: 18,
              color: Color.fromARGB(221, 255, 255, 255),
              weight: FontWeight.bold,
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: favController.favorites.length,
          itemBuilder: (context, index) {
            final store = favController.favorites[index];

            return CustomCard(
              imageUrl: store["image"],
              title: store["title"],
              subtitle: "Price: ${store["price"]} | Category: ${store["category"]}",
              isFavorite: true,
              onFavorite: () => favController.toggleFavorite(store),
            );
          },
        );
      }),
    );
  }
}
