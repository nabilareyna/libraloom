import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/component/widget/WButton.dart';
import 'package:libraloom/component/widget/WTextFieldSign.dart';
import 'package:libraloom/component/widget/WToast.dart';
import 'package:libraloom/module/sign_in/controller/c_sign_in.dart';
import 'package:libraloom/routes/routes.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class SignInPage extends GetView<CSignIn> {
  const SignInPage({super.key});

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
                height: MediaQuery.of(context).size.width * 0.40,
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
                            'Welcome Back',
                            style: TextStyle(fontFamily: 'Poppins', color: Style.primaryColor, fontWeight: FontWeight.w700, fontSize: 32),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(x: 2), vertical: Const.parentMargin(x: 1)),
                          child: Column(children: [
                            WTextField(
                              hintText: "Email",
                              obscureText: false,
                              controller: controller.emailController,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.10,
                            ),
                            WTextField(
                              obscureText: true,
                              hintText: "Password",
                              controller: controller.passController,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.080,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                      'Remember Me',
                                      style: TextStyle(fontFamily: 'Poppins', color: Color(0XFFF8D8888), fontSize: 15),
                                    )
                                  ],
                                ),
                                Text(
                                  "Forget Password?",
                                  style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400, fontSize: 15, color: Color(0XFFF1557FF)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.10,
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.homepage);
                              },
                              child: WButton(
                                text: "Sign In",
                                fontFamily: "ABeeZee",
                                radius: 15,
                                width: double.infinity,
                              ),
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
