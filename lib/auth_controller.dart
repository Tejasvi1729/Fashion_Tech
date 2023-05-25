import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/login_page.dart';
import 'package:fluttersample/sign_up.dart';
import 'package:get/get.dart';
import './welcome_page.dart';
class AuthController extends GetxController{
  //authcont instance
  static AuthController instance =Get.find();
  //user details
  late Rx<User?> _user;
  FirebaseAuth auth =FirebaseAuth.instance;
 
  @override
  void onReady(){
    super.onReady();
    _user=Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user,_initialScreen);
  }

  _initialScreen(User? user){//try adding void in front of it
    if(user==null){print("Login Page");Get.offAll(()=>LoginPage());}
    else{Get.offAll(()=>WelcomePage(email:user.email.toString()));}
  }
  void register(String emaili,pass)async{
    try{
      await auth.createUserWithEmailAndPassword(email: emaili, password: pass);
    }
    catch(e){
      Get.snackbar("user", "viva la stany",
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "account creation failed",
        style:TextStyle(color:Colors.amber),
      ),
      messageText: Text(
        e.toString(),
        style:TextStyle(color:Colors.white),
      )
      );
    }
  }
  void login(String emaili,pass)async{
    try{
      await auth.signInWithEmailAndPassword(email: emaili, password: pass);
    }
    catch(e){
      Get.snackbar("user", "viva la stanly",
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "login failed",
        style:TextStyle(color:Colors.amber),
      ),
      messageText: Text(
        e.toString(),
        style:TextStyle(color:Colors.white),
      )
      );
    }
  }
  void logout()async{
    await auth.signOut();
  }
}