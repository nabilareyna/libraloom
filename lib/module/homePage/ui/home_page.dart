import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WBookList.dart';
import 'package:libraloom/component/widget/WCircularContainer.dart';
import 'package:libraloom/component/widget/WScaffold.dart';
import 'package:libraloom/module/homePage/controller/c_home_page.dart';
import 'package:libraloom/routes/routes.dart';

import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class HomePage extends GetView<CHomePage> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      bottomBar: true,
      body: (context, orientation, platform) {
        return SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: Const.siblingMargin(x: 6), vertical: Const.parentMargin(x: 2)),
                width: double.infinity,
                child: Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  shadowColor: Colors.black.withOpacity(0.8),
                  color: Colors.transparent,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w400),
                        fillColor: Style.primaryColor,
                        filled: true,
                        prefixIcon: ImageIcon(
                          AssetImage('assets/icon/search.png'),
                          color: Colors.white,
                          size: 15,
                        ),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide(color: Colors.grey.shade300))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  CarouselSlider(
                      items: [
                        Image(
                          image: AssetImage('assets/test1.png'),
                          fit: BoxFit.fill,
                        ),
                        Image(
                          image: AssetImage('assets/test1.png'),
                          fit: BoxFit.fill,
                        ),
                        Image(
                          image: AssetImage('assets/test1.png'),
                          fit: BoxFit.fill,
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        height: 200,
                        onPageChanged: (index, _) => controller.updatePageIndicator(index),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 3; i++)
                            WCircularContainer(
                              width: 15,
                              height: 15,
                              backgroundColor: controller.carouselCurrentIndex.value == i ? Style.primaryColor : Color(0XFFFD9D9D9),
                              margin: EdgeInsets.only(right: 10),
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Const.siblingMargin(x: 6), vertical: Const.parentMargin(x: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Library", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 32, color: Style.primaryColor)),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.category);
                          },
                          child: ImageIcon(
                            AssetImage('assets/icon/category.png'),
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  Obx(
                    () => SingleChildScrollView(
                        child: controller.isLoading.isTrue
                            ? Column(
                                children: [
                                  CircularProgressIndicator(),
                                  Text(
                                    'Memuat buku....',
                                    style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                                  ),
                                ],
                              )
                            : ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: controller.buku.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return BookList(
                                    bookTitle: controller.buku[index]['judul'],
                                    bookDescription: controller.buku[index]['deskripsi'],
                                    bookAuthor: controller.buku[index]['penulis'],
                                    bookCategory: "aaa",
                                    bookImage: "assets/frame1.png",
                                  );
                                })),
                  )
                ],
              )
            ],
          )),
        );
      },
    );
  }
}
