import 'package:flutter/material.dart';
import 'package:libraloom/utils/appThemes.dart';
import 'package:libraloom/utils/const.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, this.user, this.timestamp, this.description});

  final String? user;
  final String? description;
  final String? timestamp;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Const.parentMargin()),
      margin: EdgeInsets.only(bottom: Const.parentMargin()),
      width: double.infinity,
      height: 181,
      decoration: BoxDecoration(color: Style.greyColor, borderRadius: BorderRadius.circular(30)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          user!,
          style: Style.nameUSer,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 260,
          child: Text(
            description!,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontWeight: FontWeight.w300, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          timestamp!,
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w300, color: Colors.white, fontSize: 11),
        )
      ]),
    );
  }
}
