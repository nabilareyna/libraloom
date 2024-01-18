import 'package:flutter/material.dart';
import 'package:libraloom/utils/appLayout.dart';
import 'package:libraloom/utils/appThemes.dart';

class WButton extends StatelessWidget {
  final String? text;
  final String? fontFamily;
  const WButton({super.key, this.text, this.fontFamily});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: 40,
      width: size.width,
      decoration: BoxDecoration(color: Style.primaryColor, borderRadius: BorderRadius.circular(10), boxShadow: [
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
