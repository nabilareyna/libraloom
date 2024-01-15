import 'package:flutter/material.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 900,
              child: Center(
                child: Text(
                  'LibraLoom',
                  style: TextStyle(fontFamily: 'Merriweather', fontWeight: FontWeight.w700, fontStyle: FontStyle.italic, color: Colors.white, fontSize: 48),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(x: 2)),
                    child: Text("Sign In", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: Colors.white, fontSize: 25)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Const.siblingMargin(x: 6)),
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontFamily: 'ABeeZee', fontWeight: FontWeight.w400, color: Style.primaryColor, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )
          ],
        ),
      )
    ]);
  }
}
