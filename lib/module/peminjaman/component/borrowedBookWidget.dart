import 'package:flutter/material.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class BorrowedBookWidget extends StatelessWidget {
  const BorrowedBookWidget({super.key, this.bookImage, this.bookTitle, this.loanDate, this.returnDate, this.status});

  final String? bookImage;
  final String? bookTitle;
  final String? loanDate;
  final String? returnDate;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: Const.parentMargin(x: 2)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(bookImage!),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookTitle!,
                style: Style.bookTitle,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  loanDate!,
                  style: Style.loanReturnDate,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                returnDate!,
                style: Style.loanReturnDate,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 180,
                child: Text(
                  "Complete your loan before it matures",
                  style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: Const.parentMargin(x: 6)),
                decoration:
                    BoxDecoration(color: status == "Finished" ? Style.primaryColor : Color(0XFFFED1E1E), borderRadius: BorderRadius.circular(20), boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  )
                ]),
                width: 112,
                height: 30,
                child: Text(
                  textAlign: TextAlign.center,
                  status!,
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
