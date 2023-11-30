import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  final cEmail = TextEditingController();
  final cPass = TextEditingController();

@override
  void onClose() {
    cEmail.dispose();
    cPass.dispose();
    super.onClose();
  }

}
