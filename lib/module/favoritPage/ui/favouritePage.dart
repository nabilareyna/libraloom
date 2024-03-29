import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WBookList.dart';
import 'package:libraloom/component/widget/WScaffold.dart';
import 'package:libraloom/module/favoritPage/controller/c_favouritePage.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';

class FavouritePage extends GetView<CFavouritePage> {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      title: "Bookmark",
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
            padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(), vertical: Const.parentMargin()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BookList(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  bookCategory: "Budaya",
                  bookDescription:
                      "Buku “Nusantara: Sejarah Indonesia” yang diterbitkan pada tahun 1943 ini membahas sejarah Indonesia dari periode prasejarah hingga masa penjajahan kolonial Belanda.",
                  bookAuthor: "By: Devi Anggita",
                ),
                BookList(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  bookCategory: "Budaya",
                  bookDescription:
                      "Buku “Nusantara: Sejarah Indonesia” yang diterbitkan pada tahun 1943 ini membahas sejarah Indonesia dari periode prasejarah hingga masa penjajahan kolonial Belanda.",
                  bookAuthor: "By: Devi Anggita",
                ),
                BookList(
                  bookImage: "assets/frame1.png",
                  bookTitle: "Cintai Nusantara",
                  bookCategory: "Budaya",
                  bookDescription:
                      "Buku “Nusantara: Sejarah Indonesia” yang diterbitkan pada tahun 1943 ini membahas sejarah Indonesia dari periode prasejarah hingga masa penjajahan kolonial Belanda.",
                  bookAuthor: "By: Devi Anggita",
                ),
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
      bottomBar: true,
    );
  }
}
