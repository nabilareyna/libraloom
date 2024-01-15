import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('assets/arrow_back.png'),
                size: 25,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                height: 780,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: [],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
