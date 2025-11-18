
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/login_api_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_text.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_textfield.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/cutom_button.dart';

class LoginApiPage extends StatelessWidget {
  LoginApiPage({super.key});
  final loginController = Get.find<LoginApiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const  Color.fromARGB(255, 243, 215, 184), 
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              child: Column(
                children: [
                  const SizedBox(height: 10),

                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 229, 129, 15), 
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 18),

                  const CustomText(
                    text: "Welcome Back!",
                    size: 22,
                    weight: FontWeight.bold,
                    color: Color.fromARGB(255, 229, 129, 15), 
                  ),

                  const SizedBox(height: 25),

                  CustomTextfield(
                    label: "Username",
                    controller: loginController.usernamController,
                    icon: Icons.person,
                  ),

                  const SizedBox(height: 15),

                  CustomTextfield(
                    label: "Password",
                    controller: loginController.passwordController,
                    isPassword: true,
                    icon: Icons.lock,
                  ),

                  const SizedBox(height: 25),

                  Obx(() {
                    if (loginController.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 229, 129, 15), 
                        ),
                      );
                    }
                    
                    return CustomButton(
                      text: "Login",
                      color: const Color.fromARGB(255, 229, 129, 15), 
                      icon: Icons.login,
                      onPressed: loginController.login,
                    );
                        
                  }
                  ),
                  const SizedBox(height: 10),
                  CustomButton(
                      text: "Register",
                      color: const Color.fromARGB(255, 229, 129, 15), 
                      icon: Icons.app_registration_rounded,
                      onPressed: loginController.registerroutes,
                    ),
                  
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
