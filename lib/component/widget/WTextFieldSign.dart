import 'package:flutter/material.dart';

class WTextField extends StatelessWidget {
  const WTextField({super.key, this.hintText, this.obscureText = false});
  final String? hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      shadowColor: Colors.black.withOpacity(0.8),
      color: Colors.transparent,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText!,
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide(color: Colors.grey.shade300))),
      ),
    );
  }
}
