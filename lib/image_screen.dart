import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  _ImageScreen createState() => _ImageScreen();
}

class _ImageScreen extends State<ImageScreen> {
  final _occ = ['work', 'college', 'weekends', 'party'];
  List<SelectedOptions> _selectedOccasions = [];
  var ls=<String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Style Up'),
      // ),
         backgroundColor: Color.fromRGBO(199, 191, 191, 1),
      
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'On which occasions do you like to style up?',
              style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(170, 122, 100, 1),
                  // rgba(161, 141, 116, 1)
                  fontFamily: 'Maitree',
                  fontWeight: FontWeight.w600,
                ),
            ),
            DropdownButtonFormField<String>(
              hint: const Text("select occasion"),
              items: _occ.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child:Row(children:[
                    if (ls.contains(dropDownStringItem))
                          // Text(dropDownStringItem,style: TextStyle(color: Color.fromRGBO(209, 68, 28, 1)),),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                     Text(dropDownStringItem),
                     ]
                     ),
                );
              }).toList(),
              onChanged: (String? newValueselected) {
                setState(() {
                    print(ls);
                  // if (newValueselected != null) {
                    if (newValueselected != null) {
                    if (_selectedOccasions
                        .any((option) => option.occasion == newValueselected)) {
                      _selectedOccasions.removeWhere(
                          (option) => option.occasion == newValueselected);
                          ls.remove(newValueselected);
                    } else {
                      if (_selectedOccasions.length < 3) {
                        _selectedOccasions
                            .add(SelectedOptions(newValueselected, 0));
                            ls.add(newValueselected);
                      }
                    }
                    }
                  });
              },
              value: null,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_selectedOccasions.length == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LookPage(
                        selectedOccasions: _selectedOccasions,
                      ),
                    ),
                  );
                }
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class LookPage extends StatelessWidget {
  final List<SelectedOptions> selectedOccasions;

  const LookPage({Key? key, required this.selectedOccasions}) : super(key: key);

  static List<String> imagePaths = [
    // 'assets/images/work_look_1.jpg',
    // 'assets/images/work_look_2.jpg',
    // 'assets/images/work_look_3.jpg',
    // 'assets/images/college_look_1.jpg',
    // 'assets/images/college_look_2.jpg',
    // 'assets/images/college_look_3.jpg',
    // 'assets/images/weekends_look_1.jpg',
    // 'assets/images/weekends_look_2.jpg',
    // 'assets/images/weekends_look_3.jpg',
    // 'assets/images/party_look_1.jpg',
    // 'assets/images/party_look_2.jpg',
    // 'assets/images/party_look_3.jpg',
    'img/dp.png',
    'img/fb_logo.png',
    'img/google_logo.png',
    'img/dp.png',
    'img/fb_logo.png',
    'img/google_logo.png',
    'img/dp.png',
    'img/fb_logo.png',
    'img/google_logo.png',
    'img/dp.png',
    'img/fb_logo.png',
    'img/google_logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> imageWidgets = selectedOccasions.map((option) {
      String prefix = option.occasion.toLowerCase();
      int startIndex = option.selectedIndex * 3;
      int endIndex = startIndex + 3;
      List<String> occasionImages = imagePaths
          .where((imagePath) => imagePath.contains(prefix))
          .toList()
          .sublist(startIndex, endIndex);

      return GridView.count(
        crossAxisCount: 3,
        children: occasionImages.map((imagePath) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LookDetailPage(
                    selectedOccasions: selectedOccasions,
                    image: AssetImage(imagePath),
                  ),
                ),
              );
            },
            child: Image(
              image: AssetImage(imagePath),
            ),
          );
        }).toList(),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a look'),
      ),
      body: ListView(
        children: imageWidgets,
      ),
    );
  }
}

class LookDetailPage extends StatelessWidget {
  final List<SelectedOptions> selectedOccasions;
  final ImageProvider image;

  const LookDetailPage({
    Key? key,
    required this.selectedOccasions,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> remainingImages = selectedOccasions.map((option) {
      String prefix = option.occasion.toLowerCase();
      int startIndex = option.selectedIndex * 3;
      int endIndex = startIndex + 3;
      return LookPage.imagePaths
          .where((imagePath) => imagePath.contains(prefix))
          .toList()
          .sublist(startIndex, endIndex);
    }).toList()
      ..removeAt(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Look Detail'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: remainingImages.expand((imagePaths) {
          return imagePaths.map((imagePath) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LookDetailPage(
                      selectedOccasions: selectedOccasions.sublist(1),
                      image: AssetImage(imagePath),
                    ),
                  ),
                );
              },
              child: Image(
                image: AssetImage(imagePath),
              ),
            );
          });
        }).toList(),
      ),
    );
  }
}

class SelectedOptions {
  String occasion;
  int selectedIndex;

  SelectedOptions(this.occasion, this.selectedIndex);
}