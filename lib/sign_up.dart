import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/auth_controller.dart';

class SignUpPage extends StatelessWidget{
  const SignUpPage({Key?key}):super(key:key);

  @override
   Widget build(BuildContext context) {
    var emailcont=TextEditingController();
    var passcont=TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    List images=[
      "img/dp.png","img/wallpapersden.com_abstract-liquid-8k-cool-art_7680x4320.jpg","img\wallpapersden.com_tanjirou-kamado-demon-slayer_1920x1080.jpg",
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 221, 221),
      body: Column(children: [
        Container(
          //container for image display
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/wallpapersden.com_abstract-liquid-8k-cool-art_7680x4320.jpg"), fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              SizedBox(height: 0.14*h,),
              CircleAvatar(
                radius:55,backgroundColor:Colors.white,
                child:CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    "img/wallpapersden.com_tanjirou-kamado-demon-slayer_1920x1080.jpg",
                  ),
                )),
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              children: [
                SizedBox(
                  height: 35,
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
                    controller: emailcont,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email,color:Colors.cyan),
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
                    controller: passcont,
                    decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.password,color:Colors.orange[200],),
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
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    AuthController.instance.register(emailcont.text.trim(), passcont.text.trim());
                  },
                  child: Container(
                    //container for image display
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                            image: AssetImage("img/dp.png"), fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                RichText(
                    text: TextSpan(
                        text: "Sign Up using",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 25,
                        ),
                    )
                ),
                Wrap(
                  children:List<Widget>.generate(
                    2, 
                    (index){
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:CircleAvatar(
                        radius: 30,
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
            ]
        ),
        ),
      ]
      ),
    );
  }
}