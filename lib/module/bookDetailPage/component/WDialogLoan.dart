import 'package:flutter/material.dart';
import 'package:libraloom/component/widget/WButton.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class WDialogLoan extends StatelessWidget {
  const WDialogLoan({super.key, this.value});
  final value;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(Const.parentMargin()),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("SET LOAN DATE", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w700, fontSize: 25)),
            SizedBox(
              height: 16,
            ),
            Image.asset(
              "assets/frame1.png",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Loan Date       :", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w500)),
                Container(
                  width: 130,
                  height: 29,
                  decoration: BoxDecoration(color: Style.greyColor, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: value,
                          readOnly: true,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const ImageIcon(
                        AssetImage('assets/icon/date.png'),
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Date of return:", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w500)),
                Container(
                  width: 130,
                  height: 29,
                  decoration: BoxDecoration(color: Style.greyColor, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: value,
                          readOnly: true,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const ImageIcon(
                        AssetImage('assets/icon/date.png'),
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            WButton(
              fontFamily: "Poppins",
              text: "Confirmation",
              width: 160,
              radius: 15,
            )
          ],
        ),
      ),
    );
  }
}
