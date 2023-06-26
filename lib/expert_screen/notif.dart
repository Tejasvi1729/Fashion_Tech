import 'dart:async';
import 'package:flutter/material.dart';
var finall=1;
class FirstRoute extends StatelessWidget {
  
  final String ages;
  final String gender;
  final String location;
  final String heights;
  final String name;
  final String query;
  final String occasion;

  const FirstRoute({
    Key? key,
    required this.name,
    required this.query,
    required this.occasion,
    required this.ages,
    required this.gender,
    required this.location,
    required this.heights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150,),
         ElevatedButton(
          child:  Container(
              height: 134,
              width: w,
              color:Color.fromARGB(161, 141, 116, 1),
              // backgroundColor:Colors.fromARGB(161, 141, 116, 1),
              child:Row(
                children:[
                  SizedBox(width: 13,),
              CircleAvatar(
                // padding: const EdgeInsets.all(0),
                    radius: 42,
                    backgroundImage:AssetImage(
                            './img/dp.png',
                          ),
                    // backgroundImage: Image.file( 
                    //   ,
                    //   fit: BoxFit.cover,
                    // ).image,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    'wanna judge $name?',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(240, 237, 226, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ],
            ),),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TabBarApp(name: 'name', query: 'query', occasion: 'occasion', age: 'age', gender: 'gender', location: 'location', heights: 'heights')),
            );
          },
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          child:  Container(
              height: 134,
              width: w,
              color:Color.fromARGB(161, 141, 116, 1),
              // backgroundColor:Colors.fromARGB(161, 141, 116, 1),
              child:Row(
                children:[
                  SizedBox(width: 13,),
              CircleAvatar(
                // padding: const EdgeInsets.all(0),
                    radius: 42,
                    backgroundImage:AssetImage(
                            './img/dp.png',
                          ),
                    // backgroundImage: Image.file( 
                    //   ,
                    //   fit: BoxFit.cover,
                    // ).image,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    'wanna judge $name?',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(240, 237, 226, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ],
            ),),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TabBarApp(name: 'name', query: 'query', occasion: 'occasion', age: 'age', gender: 'gender', location: 'location', heights: 'heights')),
            );
          },
        ),
        SizedBox(height: 20,),
      ],),),
    );
  }
}
class TabBarApp extends StatelessWidget {
  // const TabBarApp({super.key});
  final String age;
  final String gender;
  final String location;
  final String heights;
  final String name;
  final String query;
  final String occasion;

  const TabBarApp({
    Key? key,
    required this.name,
    required this.query,
    required this.occasion,
    required this.age,
    required this.gender,
    required this.location,
    required this.heights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});
  @override
  Widget build(BuildContext context) {
  scheduleTimeout();
    
    var reviewgiven=TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                // icon: Icon(Icons.cloud_outlined),
                text:'overview',
              ),
              Tab(
                text: 'personal details',
                // icon: Icon(Icons.beach_access_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: QueryScreen2(age: 'age', gender: 'gender', location: 'location', heights: 'heights'),
            ),
            Center(
              child: QueryScreen(name: 'name', query: 'query', occasion: 'occasion'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const SecondRoute()),
//             );
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class QueryScreen extends StatelessWidget {
  
  final String name;
  final String query;
  final String occasion;

  const QueryScreen({
    Key? key,
    required this.name,
    required this.query,
    required this.occasion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reviewgiven=TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text('Query'),

      // ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55),
            Container(
              height: 134,
              width: w,
              color:Color.fromARGB(161, 141, 116, 1),
              // backgroundColor:Colors.fromARGB(161, 141, 116, 1),
              child:Row(
                children:[
                  SizedBox(width: 13,),
              CircleAvatar(
                // padding: const EdgeInsets.all(0),
                    radius: 42,
                    backgroundImage:AssetImage(
                            './img/dp.png',
                          ),
                    // backgroundImage: Image.file( 
                    //   ,
                    //   fit: BoxFit.cover,
                    // ).image,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    'name :$name',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(240, 237, 226, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ],
            ),),
            // Text('Name: $name', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('Query:',style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(240, 237, 226, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
            // SizedBox(height: 8),
            // Text('$query', style: TextStyle(
            //           fontSize: 28,
            //           color: Color.fromARGB(240, 237, 226, 1),
            //           fontFamily: 'Maitree',
            //           fontWeight: FontWeight.w500,
            //         ),),
            SizedBox(height: 16),
            Text('Occasion: ', style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(240, 237, 226, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
            // Text('$occasion', style: TextStyle(
            //           fontSize: 28,
            //           color: Color.fromARGB(240, 237, 226, 1),
            //           fontFamily: 'Maitree',
            //           fontWeight: FontWeight.w500,
            //         ),),
            SizedBox(height: 16),
            Text('Type your opinion', style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(240, 237, 226, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
        SizedBox(width: 25),
            Container(
            // SizedBox(width: 25),
              child:Container(
    child: new ConstrainedBox(
        constraints: BoxConstraints(
            maxHeight: 300.0,
            
        ),
        child: TextField(
          controller:reviewgiven,
                    decoration: InputDecoration(
                      hintText:"Type here...",
                      filled: true,
                      fillColor: Color.fromARGB(135, 129, 117, 1),
                      hintStyle: TextStyle(color:Color.fromARGB(161,141,116,1),
                      ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color.fromARGB(161,141,116,1)),
                      ),),
                    maxLines: null,
                ),
            ),
        ),),
        // Padding:(
        //   padding:
        SizedBox(height: 15,),
        Row(
          children:[
        SizedBox(width: 155,),

        ElevatedButton(
               style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(121, 111, 111, 1),
  ),
                  onPressed: () {
                    // Perform actions with the gathered user inputs
                    // String bio = _bioController.text;
                    // String username = _usernameController.text;
                    // String fashionMeaning = _fashionMeaningController.text;
                    String reviews = reviewgiven.text;

                    // Display the user profile data or perform any desired actions
                    print('Query: $query');
                    print('Profile: $name');
                    // print('Fashion Meaning: $fashionMeaning');
                    // print('Claim to Fashion: $claimToFashion');
                    print('review: $reviews');
                  },
                  child: Text('Share'),
                ),
        ],),
          ],
        ),
      ),
    );
  }
}


class QueryScreen2 extends StatelessWidget {
  
  final String age;
  final String gender;
  final String location;
  final String heights;

  const QueryScreen2({
    Key? key,
    required this.age,
    required this.gender,
    required this.location,
    required this.heights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text('Query'),

      // ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55),
            Container(
              height: 134,
              width: w,
              color:Color.fromARGB(161, 141, 116, 1),
              // backgroundColor:Colors.fromARGB(161, 141, 116, 1),
              child:Row(
                children:[
                  SizedBox(width: 13,),
              CircleAvatar(
                // padding: const EdgeInsets.all(0),
                    radius: 42,
                    backgroundImage:AssetImage(
                            './img/dp.png',
                          ),
                    // backgroundImage: Image.file( 
                    //   ,
                    //   fit: BoxFit.cover,
                    // ).image,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    'name :',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(240, 237, 226, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ],
            ),),
            // Text('Name: $name', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('  Age:                            $age',style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(161, 141, 116, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
            // Padding(
            //   padding: EdgeInsets.only(left: 0,),
              // child:
              // SizedBox(width: 35,),
              //  Text('$age',style: TextStyle(
              //         fontSize: 28,
              //         color: Color.fromARGB(161, 141, 116, 1),
              //         fontFamily: 'Maitree',
              //         fontWeight: FontWeight.w500,
              //       ),),
            // ),
            // SizedBox(height: 8),
            // Text('$query', style: TextStyle(
            //           fontSize: 28,
            //           color: Color.fromARGB(240, 237, 226, 1),
            //           fontFamily: 'Maitree',
            //           fontWeight: FontWeight.w500,
            //         ),),
            SizedBox(height: 16),
            Text('  Gender:                      $gender', style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(161, 141, 116, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
            SizedBox(height: 16),
            Text('  Location:                    $location', style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(161, 141, 116, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
        // SizedBox(width: 25),
      SizedBox(height: 16),
            Text('  Height:                       $heights', style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(161, 141, 116, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
        // Padding:(
        //   padding:
        SizedBox(height: 16,),
        Text('  Skin Tone:', style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(161, 141, 116, 1),
                      fontFamily: 'Maitree',
                      fontWeight: FontWeight.w500,
                    ),),
          Padding(
            padding: const EdgeInsets.only(left: 170),
          child:CircleAvatar(
                    radius: 20,
                    //  backgroundImage:AssetImage(
                    //   './img'
                    //  ),
                     backgroundColor: Color.fromARGB(135, 129, 117, 1),
                     child:CircleAvatar(
                      radius: 18,
                      backgroundColor: Color.fromARGB(218, 187, 127, 1)
                      ,)
                  ),),
          ],
        ),
      ),
    );
  }
}
Timer scheduleTimeout([int milliseconds = 10000]) =>
    Timer(Duration(milliseconds: milliseconds), handleTimeout);

void handleTimeout() {  // callback function
  // Do some work.
  DialogWarning();
}
class DialogWarning extends StatelessWidget {
  const DialogWarning({super.key});

  @override
  Widget build(BuildContext context) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Reprimand'),
          content: const Text('Are you still there?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                 Navigator.pop(context, 'Cancel');finall=0;
              },
              child: const Text('NO'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('YES'),
            ),
          ],
        ),
    );
    return Scaffold();
  }
}
