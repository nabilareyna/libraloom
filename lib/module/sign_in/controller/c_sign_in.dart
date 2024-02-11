import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:libraloom/component/widget/WToast.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';

class CSignIn extends GetxController {
  // String _token = "";
  // final isLoading = false.obs;

  var isChecked = false.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  // String get token {
  //   return _token;
  // }

  // Future<void> login({required String email, required String pass}) async {
  //   try {
  //     var res = await http.post(Uri.parse(url + 'auth/login'), body: {'email': email, 'password': pass});
  //     final response = jsonDecode(res.body);
  //     final message = jsonDecode(res.body)['message'];
  //     if (response["success"] == true) {
  //       ToastWidget.showToast(type: ToastWidgetType.SUCCESS, message: message);
  //       Get.toNamed(Routes.homepage);
  //     } else {
  //       ToastWidget.showToast(type: ToastWidgetType.ERROR, message: message);
  //       print(json.decode(response.body));
  //     }
  //   } catch (e) {
  //     ToastWidget.showToast(type: ToastWidgetType.ERROR, message: 'Periksa Koneksi Jaringan');
  //     print(e.toString());
  //     debugPrint(emailController.text.toString());
  //   }
  // }
}
