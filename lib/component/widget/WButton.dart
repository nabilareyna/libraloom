import 'package:flutter/material.dart';
import 'package:libraloom/utils/appLayout.dart';
import 'package:libraloom/utils/appThemes.dart';

class WButton extends StatelessWidget {
  const WButton({super.key, this.text, this.fontFamily, this.radius = 100, this.padding = 0, this.width = 0});
  final String? text;
  final String? fontFamily;
  final double radius;
  final double padding;
  final double width;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: EdgeInsets.only(bottom: padding),
      height: 40,
      width: width,
      decoration: BoxDecoration(color: Style.primaryColor, borderRadius: BorderRadius.circular(radius), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 4),
        )
      ]),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: fontFamily!),
        ),
      ),
    );
  }
}
