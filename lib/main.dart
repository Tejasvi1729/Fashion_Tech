import 'dart:io';
// import 'dart:math'; 
// import 'package:http/http.dart' as http;
// import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
void main() => runApp(const ProfileApp());
// Future<File> urlToFile(String imageUrl) async {
// // generate random number.
// var rng = new Random();
// // get temporary directory of device.
// Directory tempDir = await getTemporaryDirectory();
// // get temporary path from temporary directory.
// String tempPath = tempDir.path;
// // create a new file in temporary path with random file name.
// File file = new File('$tempPath'+ (rng.nextInt(100)).toString() +'.png');
// // call http.get method and pass imageUrl into it to get response.
// // http.Response response = await http.get(imageUrl);
// // write bodyBytes received in response to file.
// await file.writeAsBytes(response.bodyBytes);
// // now return the file which is created with random name in 
// // temporary directory and image bytes from response is written to // that file.
// return file;
// }
class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  File img=new File('img/dp.png');
  File imgP=new File('img/dp.png');
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fashionMeaningController = TextEditingController();
  final TextEditingController _claimToFashionController = TextEditingController();
  List imageList=[];
  Future _addImage() async{
    // Add logic to open image picker and add the selected image to the _images list
    try{
      final img=await ImagePicker().pickImage(source: ImageSource.camera);
      if(img==null)return;

      final imagetemp=File(img.path);
      setState(() => this.img=imagetemp);
      imageList.add(img);
    }on PlatformException catch(e){
      print('falied to pick image: $e');
    }
  }

  Future _addProfile() async{
    // Add logic to open image picker and add the selected image to the _images list
    try{
      final imgP=await ImagePicker().pickImage(source: ImageSource.camera);
      if(imgP==null)return;

      final imagetemp=File(imgP.path);
      setState(() => this.imgP=imagetemp);
      // imageList.add(img);
    }on PlatformException catch(e){
      print('falied to pick image: $e');
    }
  }
  // final List<String> _images = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundColor: Colors.white,
                  child:CircleAvatar(
                    radius: 60,
                    // child: ,
                    backgroundImage: Image.file(
                      imgP,
                      fit: BoxFit.cover,
                    ).image,
                  ),
                  // You can use a dynamic image here if available
                ),
                // img!=null?Image.file(img!):FlutterLogo(size:160),
                const SizedBox(height: 16),
                TextField(
                  controller: _bioController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Bio',
                    hintText: "Tell something about yourself",
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _fashionMeaningController,
                  decoration: InputDecoration(
                    labelText: 'What does fashion mean to you?',
                    hintText:
                        "Add images that reflect your style - Hint: Images from different occasions help your followers to identify better",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _claimToFashionController,
                  decoration: InputDecoration(
                    labelText: 'Your claim to fashion',
                    hintText:
                        "Credentials, work experience, relevant courses, etc.",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _addImage,
                  child: Text('Add Image'),
                ),
                
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _addProfile,
                  child: Text('Add Profile Image'),
                ),
                SizedBox(height: 16),
                Text(
                  'Images Added: ${imageList.length}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                //   child:Row(
                //     children: [
                //       Text('Pick an Image'),
                //     ],
                //   ),
                  onPressed: () {
                    // _addImage();
                    // Perform actions with the gathered user inputs
                    String bio = _bioController.text;
                    String username = _usernameController.text;
                    String fashionMeaning = _fashionMeaningController.text;
                    String claimToFashion = _claimToFashionController.text;

                    // Display the user profile data or perform any desired actions
                    print('Bio: $bio');
                    print('Username: $username');
                    print('Fashion Meaning: $fashionMeaning');
                    print('Claim to Fashion: $claimToFashion');
                    print('Images: $imageList');
                  },
                  child: Text('Save Profile'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}