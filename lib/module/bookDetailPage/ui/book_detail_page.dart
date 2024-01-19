import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WButton.dart';

import 'package:libraloom/module/bookDetailPage/component/WAddReview.dart';
import 'package:libraloom/module/bookDetailPage/component/WBookDescript.dart';
import 'package:libraloom/module/bookDetailPage/component/WBookDetail.dart';
import 'package:libraloom/module/bookDetailPage/component/WReviewBox.dart';
import 'package:libraloom/module/bookDetailPage/controller/c_book_detail_page.dart';

import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class BookDetailPage extends GetView<CBookDetail> {
  const BookDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.bgPrimaryColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.toNamed(Routes.homepage);
            },
            icon: Icon(
              Icons.chevron_left_sharp,
              size: 36,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomStackWidget(),
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.payment);
                              },
                              child: WButton(
                                text: "Borrow",
                                fontFamily: "Poppins",
                                radius: 20,
                                width: 165,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            ImageIcon(
                              AssetImage("assets/icon/save.png"),
                              color: Color(0XFFF8A1EED),
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      BookDetailWidget(),
                      SizedBox(
                        height: 40,
                      ),
                      AddReview(),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: Const.siblingMargin(x: 2), vertical: Const.parentMargin()),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Padding(
                            padding: EdgeInsets.only(left: Const.siblingMargin()),
                            child: Text(
                              "Review",
                              style: TextStyle(color: Color(0XFFFB29AC7), fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ReviewBoxWidget(),
                          ReviewBoxWidget()
                        ]),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 400, color: Colors.transparent),
        Container(
            width: double.infinity,
            height: 230,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.all(Const.siblingMargin(x: 6)),
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cintai Nusantara",
                        style:
                            TextStyle(color: Colors.black, fontFamily: 'Merriweather', fontStyle: FontStyle.italic, fontWeight: FontWeight.w700, fontSize: 36)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "By: Devi Anggita",
                      style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w300, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      direction: Axis.horizontal,
                      itemSize: 24,
                      initialRating: 4,
                      allowHalfRating: true,
                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (value) {},
                    ),
                  ],
                ),
              ),
            ])),
        BookDescriptionWidget(),
        Positioned(top: 40, left: 230, child: Image.asset("assets/frame1.png", height: 228, width: 161, fit: BoxFit.fill)),
      ],
    );
  }
}
