import 'dart:convert';

import 'package:get/get.dart';
import 'package:libraloom/component/widget/WToast.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';
import 'package:http/http.dart' as http;

class CHomePage extends GetxController {
  void onInit() {
    super.onInit();
    getDataBuku();
  }

  RxBool isLoading = true.obs;

  List buku = [];

  final carouselCurrentIndex = 0.obs;

  RxInt pageIndex = 0.obs;

  void changePage(int i) async {
    switch (i) {
      case 1:
        Get.offAllNamed(Routes.peminjaman);
        break;
      case 2:
        pageIndex.value = i;
        Get.offAllNamed(Routes.favorit);
        break;
      case 3:
        pageIndex.value = i;
        Get.offAllNamed(Routes.profile);
      default:
        pageIndex.value = i;
        Get.offAllNamed(Routes.homepage);
    }
  }

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }

  Future<void> getDataBuku() async {
    String uri = url + "dataBuku";
    var res = await http.get(Uri.parse(uri));
    final response = jsonDecode(res.body);
    var data = jsonDecode(res.body)['data'];
    try {
      if (response["success"] == true) {
        buku = data;
        isLoading.value = false;
        print(data);
      } else {
        print("gaiso");
      }
    } catch (e) {
      ToastWidget.showToast(type: ToastWidgetType.ERROR, message: 'Periksa Koneksi Jaringan');
    }
  }
}
