import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WBookList.dart';
import 'package:libraloom/component/widget/WScaffold.dart';
import 'package:libraloom/module/novelPage/controller/c_novel_page.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';

class NovelPage extends GetView<CNovelpage> {
  const NovelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      title: "Novel",
      bottomBar: true,
      leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.homepage);
          },
          icon: Icon(
            Icons.chevron_left_sharp,
            size: 36,
          )),
      body: (context, orientation, platform) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: Const.parentMargin()),
            child: Column(
              children: [
                BookList(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  bookCategory: "Budaya",
                  bookDescription:
                      "Buku “Nusantara: Sejarah Indonesia” yang diterbitkan pada tahun 1943 ini membahas sejarah Indonesia dari periode prasejarah hingga masa penjajahan kolonial Belanda.",
                  bookAuthor: "By: Devi Anggita",
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
