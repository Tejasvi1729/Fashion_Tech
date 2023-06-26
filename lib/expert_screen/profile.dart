
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  File img = File('img/dp.png');
  File imgP = File('img/dp.png');
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fashionMeaningController =
      TextEditingController();
  final TextEditingController _claimToFashionController =
      TextEditingController();
  List<File> imageList = [];

  Future<void> _addImage() async {
    try {
      // final pickedImage =
      //     await ImagePicker().pickImage(source: ImageSource.camera);
      // if (pickedImage == null) return;

      // final imageTemp = File(pickedImage.path);
      // setState(() => img = imageTemp);
      // imageList.add(imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<void> _addProfile() async {
    try {
      // final pickedImage =
      //     await ImagePicker().pickImage(source: ImageSource.camera);
      // if (pickedImage == null) return;

      // final imageTemp = File(pickedImage.path);
      // setState(() => imgP = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
  void _addProfiles(){
    print('hi');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Profile'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: ()=>_addProfile(),
                child:CircleAvatar(
                  radius: 64,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: Image.file(
                      imgP,
                      fit: BoxFit.cover,
                    ).image,
                  ),
                ),),
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
                SizedBox(height: 16),
                Text(
                  'Images Added: ${imageList.length}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    String bio = _bioController.text;
                    String username = _usernameController.text;
                    String fashionMeaning = _fashionMeaningController.text;
                    String claimToFashion = _claimToFashionController.text;

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