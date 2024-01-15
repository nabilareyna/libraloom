import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraloom/module/sign_up/ui/sign_up.dart';
import 'package:libraloom/module/welcome_page/ui/welcomePage.dart';
import 'package:libraloom/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //final pageC =
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}
