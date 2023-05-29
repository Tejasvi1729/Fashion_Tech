import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:fluttersample/login_page.dart';
// import 'login_page.dart';
// import 'sign_up.dart';
import "package:get/get.dart";
// import 'auth_controller.dart';
// import 'package:fluttersample/welcome_page.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login authenticaion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
