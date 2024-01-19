import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class ReviewBoxWidget extends StatelessWidget {
  const ReviewBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: Const.parentMargin()),
      padding: EdgeInsets.only(top: Const.siblingMargin(x: 6), left: Const.siblingMargin(x: 4), right: Const.siblingMargin(x: 4)),
      height: 170,
      decoration: BoxDecoration(color: Style.greyColor, borderRadius: BorderRadius.circular(30)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Putri Agustina",
          style: Style.nameUSer,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "7 Januari 2023-15.30 WIB",
          style: TextStyle(fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w400),
        ),
        RatingBar.builder(
          direction: Axis.horizontal,
          itemSize: 24,
          initialRating: 4,
          allowHalfRating: true,
          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (value) {},
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Luvvv bangetttt ceritanya jadi pengen pinjam lagi dehh",
          style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
