import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  final RxBool rememberMe = false.obs;
  final RxBool isPasswordVisible = false.obs;
  
  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }
  
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
  
  bool validateForm() {
    if (formKey.currentState!.validate()) {
      // Form is valid, proceed with signup
      return true;
    }
    return false;
  }
  
  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your full name';
    }
    if (value.length < 2) {
      return 'Name must be at least 2 characters';
    }
    return null;
  }
  
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }
  
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
  
  void signUp() {
    if (validateForm()) {
      // Perform signup logic here
      print('Signing up with:');
      print('Full Name: ${fullNameController.text}');
      print('Email: ${emailController.text}');
      print('Password: ${passwordController.text}');
      print('Remember Me: ${rememberMe.value}');
      
      // Navigate to profile or next screen
      Get.toNamed('/profile');
    }
  }
  
  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
} 