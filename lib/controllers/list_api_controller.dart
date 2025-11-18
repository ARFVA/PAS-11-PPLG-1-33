import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListApiController extends GetxController {
  var isLoading = false.obs;
  var storeList = [].obs;

  final String url = "https://fakestoreapi.com/products";

  @override
  void onInit() {
    fetchStoreList();
    super.onInit();
  }

  Future<void> fetchStoreList() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List<dynamic>;
        storeList.value = jsonData.cast<Map<String, dynamic>>();
      } else {
        Get.snackbar("Error", "Gagal memuat data (${response.statusCode})");
      }
    } catch (e) {
      Get.snackbar("Error", "Terjadi kesalahan: $e");
    } finally {
      isLoading(false);
    }
  }
}
