import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/login_api_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_text.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_textfield.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/cutom_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final loginController = Get.find<LoginApiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 243, 215, 184),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 229, 129, 15),
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  const SizedBox(height: 18),
                  const CustomText(
                    text: "Register Dulu",
                    size: 22,
                    weight: FontWeight.bold,
                    color: Color.fromARGB(255, 229, 129, 15),
                  ),
                  const SizedBox(height: 25),
                  CustomTextfield(
                    label: "Username",
                    controller: loginController.usernamControllerregister,
                    icon: Icons.person,
                  ),
                  CustomTextfield(
                    label: "Password",
                    controller: loginController.passwordControllerregister,
                    isPassword: true,
                    icon: Icons.lock,
                  ),
                  CustomTextfield(
                    label: "Full Name",
                    controller: loginController.fullNameController,
                    icon: Icons.person,
                  ),
                  CustomTextfield(
                    label: "Email",
                    controller: loginController.emailController,
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 25),
                  Obx(() {
                    if (loginController.isLoading.value) {
                      return const CircularProgressIndicator(
                        color: Color.fromARGB(255, 229, 129, 15),
                      );
                    }
                    return CustomButton(
                      text: "Register",
                      color: const Color.fromARGB(255, 229, 129, 15),
                      icon: Icons.login,
                      onPressed: loginController.register,
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
