import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WButton.dart';
import 'package:libraloom/component/widget/WScaffold.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      title: "Category",
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
            padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(), vertical: Const.parentMargin(x: 2)),
            child: Column(
              children: [
                WButton(
                  text: "Novel",
                  fontFamily: "Poppins",
                  radius: 200,
                  padding: Const.parentMargin(),
                ),
                WButton(
                  text: "Magazine",
                  fontFamily: "Poppins",
                  radius: 200,
                  padding: Const.parentMargin(),
                ),
                WButton(
                  text: "Dictionary",
                  fontFamily: "Poppins",
                  radius: 200,
                  padding: Const.parentMargin(),
                ),
                WButton(
                  text: "Comic",
                  fontFamily: "Poppins",
                  radius: 200,
                  padding: Const.parentMargin(),
                ),
                WButton(
                  text: "Encyclopedia",
                  fontFamily: "Poppins",
                  radius: 200,
                  padding: Const.parentMargin(),
                ),
                WButton(
                  text: "Biography",
                  fontFamily: "Poppins",
                  radius: 200,
                  padding: Const.parentMargin(),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
