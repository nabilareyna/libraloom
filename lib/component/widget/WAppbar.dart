import 'package:flutter/material.dart';

class WAppbar extends StatelessWidget {
  const WAppbar({Key? key, this.title, this.centerTitle = true, this.leading}) : super(key: key);

  final Widget? title;
  final bool centerTitle;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: title,
      centerTitle: centerTitle,
      leading: leading,
    );
  }
}
