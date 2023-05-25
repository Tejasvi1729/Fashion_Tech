import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key?key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
              //container for image display
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                    "img/wallpapersden.com_abstract-liquid-8k-cool-art_7680x4320.jpg"),
                fit: BoxFit.cover,
              ))),
          Container(
              //container for image display
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                    "img/wallpapersden.com_abstract-liquid-8k-cool-art_7680x4320.jpg"),
                fit: BoxFit.cover,
              ))),
              SizedBox(height: 20,),
              Text(
                email,
                style: TextStyle(fontSize: 20,color: Colors.pink),
              ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
          onTap:(){AuthController.instance.logout();},
          child:Container(
            //container for image display
            width: 200,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                    image: AssetImage("img/dp.png"), fit: BoxFit.cover)),
            child: Center(
              child: Text(
                "sign out",
                style: TextStyle(
                  fontSize: 30,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),),
        ],
      ),
    );
  }
}
