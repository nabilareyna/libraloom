import 'package:get/get.dart';
import 'package:libraloom/routes/routes.dart';

class CHomePage extends GetxController {
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
}
