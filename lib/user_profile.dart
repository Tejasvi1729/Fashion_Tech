import 'package:flutter/material.dart';

void main() => runApp(const ProfileApp());

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
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fashionMeaningController =
      TextEditingController();
  final TextEditingController _claimToFashionController =
      TextEditingController();
  final List<String> _images = [];

  void _addImage() {
    // Add logic to open image picker and add the selected image to the _images list
    _images.add("image_url");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/profile_placeholder.png'),
                  // You can use a dynamic image here if available
                ),
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
                Text(
                  'Images Added: ${_images.length}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
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
                    print('Images: $_images');
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