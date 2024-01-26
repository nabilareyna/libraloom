import 'package:flutter/material.dart';
import 'package:libraloom/utils/const.dart';

class BookDetailWidget extends StatelessWidget {
  const BookDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Const.parentMargin()),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Writer                      :",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Devi Anggita",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Color(0XFFF8A1EED), fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Publisher                :",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Gramedia Pustaka",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Color(0XFFF8A1EED), fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Publication Year :",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "2010",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Color(0XFFF8A1EED), fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Category                :",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Budaya",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Color(0XFFF8A1EED), fontSize: 18),
              )
            ],
          )
        ],
      ),
    );
  }
}
