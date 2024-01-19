import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class AddReview extends StatelessWidget {
  const AddReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      margin: EdgeInsets.symmetric(horizontal: Const.siblingMargin(x: 2)),
      padding: EdgeInsets.only(top: Const.siblingMargin(x: 8), left: Const.siblingMargin(x: 4), right: Const.siblingMargin(x: 4)),
      decoration: BoxDecoration(color: Style.greyColor, borderRadius: BorderRadius.circular(30)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Give Rating:",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 5,
                ),
                RatingBar.builder(
                  direction: Axis.horizontal,
                  itemSize: 24,
                  initialRating: 0,
                  allowHalfRating: true,
                  itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
                  onRatingUpdate: (value) {},
                ),
              ],
            ),
            Text("Add Comments:", style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w300)),
            TextFormField(
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                border: InputBorder.none,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage("assets/icon/send.png"),
              size: 30,
            ))
      ]),
    );
  }
}
