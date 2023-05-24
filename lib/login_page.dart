import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 221, 221),
      body: Column(children: [
        Container(
          //container for image display
          width: w,
          height: h * 0.05,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/dp.png"), fit: BoxFit.cover)),
        ),
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 76,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "please Register",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 7,
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.35),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 7,
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.35),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "forgot your password?",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                  ),
                ]),
              ],
            )),
        SizedBox(
          height: 30,
        ),
        Container(
          //container for image display
          width: 250,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage("img/dp.png"), fit: BoxFit.cover)),
          child: Center(
            child: Text(
              "Register",
              style: TextStyle(
                fontSize: 36,
                // fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
      ]),
    );
  }
}
