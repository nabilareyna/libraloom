import 'package:flutter/material.dart';
import 'package:libraloom/utils/const.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset("assets/icon/check.png"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: Const.parentMargin()),
                  width: 250,
                  child: Text(
                      textAlign: TextAlign.center,
                      "Success. Thank you for borrowing from LibraLoom",
                      style: TextStyle(fontSize: 24, color: Color(0XFFFCAB7B7), fontFamily: "Poppins", fontWeight: FontWeight.w700)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
