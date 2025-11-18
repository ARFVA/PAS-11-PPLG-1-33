import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pas_mobile_11_pplg_1_33/routes/pages.dart';
import 'package:pas_mobile_11_pplg_1_33/routes/routes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}