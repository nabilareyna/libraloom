import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WTextFieldSign.dart';
import 'package:libraloom/module/profilePage/controller/c_profile_page.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/const.dart';

class ProfilePage extends GetView<CProfilePage> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Get.toNamed(Routes.homepage);
                },
                icon: ImageIcon(
                  AssetImage('assets/icon/whitearrow.png'),
                  size: 25,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            body: Column(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                  height: double.infinity,
                  width: double.infinity,
                  child: Obx(
                    () => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "hi, Abel",
                          style: TextStyle(fontFamily: "Angkor", color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: Const.parentMargin()),
                            padding: EdgeInsets.only(left: Const.parentMargin()),
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 6,
                                offset: Offset(0, 4),
                              )
                            ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    textAlign: TextAlign.left,
                                    "NISN           :",
                                    style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400)),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "00525678211",
                                  style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(bottom: Const.parentMargin()),
                            padding: EdgeInsets.only(left: Const.parentMargin(), right: Const.parentMargin()),
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 6,
                                offset: Offset(0, 4),
                              )
                            ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                          textAlign: TextAlign.left,
                                          "Full Name :",
                                          style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400)),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Abela Arumita",
                                        style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      controller.isEdit.value = !controller.isEdit.value;
                                    },
                                    icon: ImageIcon(
                                      AssetImage("assets/icon/edit.png"),
                                      color: Colors.green,
                                    ))
                              ],
                            )),
                        if (controller.isEdit.value == true)
                          Container(
                              margin: EdgeInsets.only(bottom: Const.parentMargin()),
                              padding: EdgeInsets.only(right: Const.parentMargin()),
                              width: double.infinity,
                              height: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white, boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                )
                              ]),
                              child: Material(
                                color: Colors.transparent,
                                child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        hintText: "Input Name",
                                        hintStyle: TextStyle(color: Colors.black, fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w400),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              controller.isEdit.value = !controller.isEdit.value;
                                            },
                                            icon: Icon(
                                              Icons.check,
                                              color: Colors.lightGreen,
                                            )))),
                              )),
                        Container(
                            margin: EdgeInsets.only(bottom: Const.parentMargin()),
                            padding: EdgeInsets.only(left: Const.parentMargin()),
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 6,
                                offset: Offset(0, 4),
                              )
                            ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    textAlign: TextAlign.left,
                                    "Email         :",
                                    style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400)),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "abelarum@gmail.com",
                                  style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(bottom: Const.parentMargin()),
                            padding: EdgeInsets.only(left: Const.parentMargin(), right: Const.parentMargin()),
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 6,
                                offset: Offset(0, 4),
                              )
                            ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                          textAlign: TextAlign.left,
                                          "Password :",
                                          style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400)),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "************",
                                        style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "Forgot Password",
                                  style: TextStyle(fontFamily: "Poppins", fontSize: 10, fontWeight: FontWeight.w400, color: Colors.blue),
                                )
                              ],
                            )),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.welcomepage);
                          },
                          child: Container(
                            height: 45,
                            width: 125,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 6,
                                offset: Offset(0, 4),
                              )
                            ]),
                            child: Center(
                              child: Text(
                                "LOG OUT",
                                style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ))
      ],
    );
  }
}
