import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/favorite_list_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/list_api_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_card.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_loading.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_text.dart';

class ListApiPage extends StatelessWidget {
  const ListApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListApiController>();
    final favController = Get.find<FavoritesController>();

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Store List",
          size: 20,
          weight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5810F),
      ),
      backgroundColor: const Color.fromARGB(255, 243, 215, 184),
      body: Obx(() {
        if (controller.isLoading.value) return const CustomLoading();

        if (controller.storeList.isEmpty) {
          return const Center(
            child: CustomText(
              text: "Tidak ada data ditemukan.",
              size: 16,
              color: Colors.black54,
            ),
          );
        }

        return RefreshIndicator(
          color: const Color(0xFFE5810F),
          onRefresh: () async => controller.fetchStoreList(),
          child: ListView.builder(
            itemCount: controller.storeList.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              final store = controller.storeList[index];

              return Obx(() {
                return CustomCard(
                  imageUrl: store["image"] ?? "",
                  title: store["title"] ?? "No Title",
                  subtitle:
                      "Price: ${store["price"] ?? '-'} | Category: ${store["category"] ?? ''}",
                  isFavorite: favController.isFavorite(store),
                  onFavorite: () {
                    favController.toggleFavorite(store);
                  },
                );
              });
            },
          ),
        );
      }),
    );
  }
}
