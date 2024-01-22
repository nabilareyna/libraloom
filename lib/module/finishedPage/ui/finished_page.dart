import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WScaffold.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';

class FinishedPage extends StatelessWidget {
  const FinishedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      title: "Finished",
      leading: IconButton(
        onPressed: () {
          Get.toNamed(Routes.homepage);
        },
        icon: Icon(
          Icons.chevron_left_sharp,
          size: 36,
        ),
      ),
      body: (context, orientation, platform) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: Const.parentMargin(), top: Const.parentMargin(), bottom: Const.parentMargin()),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/frame1.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 260,
                        child: Text(
                          "give a rating according to your opinion",
                          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w300, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        direction: Axis.horizontal,
                        itemSize: 30,
                        initialRating: 0,
                        allowHalfRating: true,
                        itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
                        onRatingUpdate: (value) {},
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(Const.parentMargin()),
              padding: EdgeInsets.all(Const.siblingMargin()),
              width: double.infinity,
              height: 105,
              decoration: BoxDecoration(border: Border.all()),
              child: TextFormField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            )
          ],
        );
      },
    );
  }
}
