import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:libraloom/component/widget/WButton.dart';
import 'package:libraloom/module/payment_page/controller/c_payment_page.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class PaymentPage extends GetView<CPaymentPage> {
  const PaymentPage({super.key});

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
      body: Stack(
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
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Merriweather', fontStyle: FontStyle.italic, fontWeight: FontWeight.w700, fontSize: 36)),
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
          Container(
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.only(top: Const.parentMargin(x: 11)),
            padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(), vertical: Const.siblingMargin(x: 10)),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: Const.parentMargin()),
                    child: Text(
                      "Payment",
                      style: Style.appBarTitle,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: Const.parentMargin(x: 2)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: Const.siblingMargin(x: 4)),
                                child: Text("Loan Date",
                                    style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 16, color: Style.bgPrimaryColor)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width * 0.40,
                                height: 40,
                                padding: EdgeInsets.only(left: Const.parentMargin()),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Style.primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text("${DateFormat.yMd().format(controller.today)}",
                                    style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Style.bgPrimaryColor, fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: Const.siblingMargin(x: 4)),
                                child: Text("Date of return",
                                    style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 16, color: Style.bgPrimaryColor)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width * 0.40,
                                height: 40,
                                padding: EdgeInsets.only(left: Const.parentMargin()),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Style.primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text("${DateFormat.yMd().format(controller.today)}",
                                    style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Style.primaryColor, fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: Const.siblingMargin(x: 4), top: Const.parentMargin()),
                        child: Text("Borrowed Books",
                            style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 16, color: Style.bgPrimaryColor)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        height: 40,
                        margin: EdgeInsets.symmetric(vertical: Const.siblingMargin(x: 2)),
                        padding: EdgeInsets.only(left: Const.parentMargin()),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Style.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("Cintai Nusantara",
                            style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Style.bgPrimaryColor, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: Const.siblingMargin(x: 4)),
                        child: Text("Amount That Should Be Paid",
                            style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 16, color: Style.bgPrimaryColor)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        height: 40,
                        margin: EdgeInsets.symmetric(vertical: Const.siblingMargin(x: 2)),
                        padding: EdgeInsets.only(left: Const.parentMargin()),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Style.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child:
                            Text("Rp.5000,00-", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Style.primaryColor, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.finished);
                      },
                      child: WButton(
                        fontFamily: "Poppins",
                        text: "Pay",
                        width: 160,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(top: 40, left: 230, child: Image.asset("assets/frame1.png", height: 228, width: 161, fit: BoxFit.fill)),
        ],
      ),
    );
  }
}
