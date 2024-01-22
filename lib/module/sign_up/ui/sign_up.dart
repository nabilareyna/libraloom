import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WButton.dart';
import 'package:libraloom/component/widget/WTextFieldSign.dart';
import 'package:libraloom/module/sign_up/controller/c_sign_up.dart';

import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class SignUpPage extends GetView<CSignUp> {
  const SignUpPage({super.key});
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
                Get.toNamed(Routes.welcomepage);
              },
              icon: ImageIcon(
                AssetImage('assets/arrow_back.png'),
                size: 25,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(Const.parentMargin(x: 2)),
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontFamily: 'Poppins', color: Style.primaryColor, fontWeight: FontWeight.w700, fontSize: 32),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(x: 2), vertical: Const.parentMargin(x: 1)),
                          child: Column(children: [
                            WTextField(
                              hintText: "NISN",
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            WTextField(hintText: "Full Name", obscureText: false),
                            SizedBox(
                              height: 30,
                            ),
                            WTextField(
                              hintText: "Email",
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            WTextField(
                              hintText: "Password",
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: controller.isChecked.value,
                                    activeColor: Style.primaryColor,
                                    onChanged: (value) {
                                      controller.isChecked.value = !controller.isChecked.value;
                                    },
                                  ),
                                ),
                                Text(
                                  'I agree too the processing of ',
                                  style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 11),
                                ),
                                Text(
                                  'personal data',
                                  style: TextStyle(fontFamily: 'Poppins', color: Style.primaryColor, fontSize: 11),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: WButton(
                                text: "Sign Up",
                                fontFamily: "ABeeZee",
                                radius: 15,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: TextStyle(fontFamily: 'Poppins', color: Color(0XFFF8D8888), fontSize: 15),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.signin);
                                  },
                                  child: Text(
                                    ' Sign In',
                                    style: TextStyle(fontFamily: 'Poppins', color: Style.primaryColor, fontSize: 15),
                                  ),
                                )
                              ],
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
