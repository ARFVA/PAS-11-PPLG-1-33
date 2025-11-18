import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11_pplg_1_33/helpers/db_helpers.dart';

class ListApiController extends GetxController {
  var isLoading = false.obs;
  var storeList = [].obs;
  final id = <String>[].obs;
  final _dbHelper = DBHelper();

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

  Future<void> deleteName(int index, BuildContext context) async {
    final name = id[index];
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Hapus Data?"),
          content: Text("Yakin ingin menghapus '$name'?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text("Batal"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text("Hapus"),
            ),
          ],
        );
      },
    );
    if (confirm == true) {
    await _dbHelper.deleteName(name);
  }
  }
}
