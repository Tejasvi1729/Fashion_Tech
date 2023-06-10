// import 'package:fluttersample/auth_controller.dart';

import 'sign_up.dart';
import "package:get/get.dart";
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    var emailcont=TextEditingController();
    var passcont=TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    List images=[
      "img/google_logo.png","img/fb_logo.png",
    ];
     bool passenable = true; 
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 191, 191, 1),
      body: Column(children: [
        // Container(
        //   //container for image display
        //   width: w,
        //   height: h * 0.05,
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage("img/dp.png"), fit: BoxFit.cover)),
        // ),
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left:(0.62*w),top: 64),
                    child:Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(161,141,116,1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                    padding: EdgeInsets.only(right:w*0.65),
                    child:
                    Text(
                    // textAlign: TextAlign.left,
                    "Log in",
                    style: TextStyle(
                      fontSize: 31,
                      color: Color.fromARGB(161,141,116,1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: TextField(
                    controller:emailcont,
                    decoration: InputDecoration(
                      hintText:"Email/Phone Number",
                      hintStyle: TextStyle(color:Color.fromARGB(161,141,116,1),
                      ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color.fromARGB(161,141,116,1)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  child: TextField(
                    obscureText: passenable,
                    controller:passcont,
                    decoration: InputDecoration(
                      // suffix: IconButton(onPressed: (){ //add Icon button at end of TextField
                      //                 setState(() { //refresh UI
                      //                     if(passenable){ //if passenable == true, make it false
                      //                        passenable = false;
                      //                     }else{
                      //                        passenable = true; //if passenable == false, make it true
                      //                     }
                      //                 });
                      //         }, icon: Icon(passenable == true?Icons.remove_red_eye:Icons.password)),
                      hintText:"Password",
                      hintStyle: TextStyle(color:Color.fromRGBO(161,141,116,1),
                      ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color.fromARGB(161,141,116,1)),
                      ),
                    ),
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "forgot password?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(161,141,116,1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ]),
              ],
            )),
        SizedBox(
          height: 30,
        ),
        // GestureDetector(
          // onTap:(){AuthController.instance.login(emailcont.text.trim(),passcont.text.trim());},
          // child:
          Container(
          //container for image display
          width: 250,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(161,141,116,1),
               boxShadow: [BoxShadow(blurRadius: 0.5,),],
          ),
          child: Center(
            child: Text(
              "login",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: 'Maitree',
                // backgroundColor: Color.fromRGBO(161,141,116,1),
              ),
            ),
          ),),
        // ),
        SizedBox(height: 20,),
       Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 13.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
 
            Text(
              "OR",
              style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(161,141,116,1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w400,
                    ),
            ),
 
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 13.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
          ]
          ),
          Wrap(
                  children:List<Widget>.generate(
                    2, 
                    (index){
                      return Padding(
                        padding: const EdgeInsets.only(top:25,left:30.0,right:30.0),
                        child:CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage:AssetImage(
                            images[index],
                          ),
                        ),
                      ));
                    }
                  )
                )
          ],
      ),
      );
  }
}