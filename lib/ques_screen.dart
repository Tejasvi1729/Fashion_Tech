import 'package:flutter/material.dart';
class QuestionnairePage extends StatefulWidget {
  const QuestionnairePage({Key? key}) : super(key: key);

  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  final _shirtprice = [
    '0-1000',
    '1000-2000',
    '2000-3000',
    '3000-4000',
    '4000+'
  ];
  final _choice = ['men', 'women', 'both'];
  var _currentChoice = <String>[];
  var _currentShirtPrice = <String>[];

  @override
  Widget build(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 191, 191, 1),
      // appBar: AppBar(
      //   title: const Text('Questionnaire'),
      // ),
      body: Padding(
        
        padding: const EdgeInsets.only(left: 0),
        child: Form(
      // SizedBox(height: 30,),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 100,
                ),
              Padding(padding: EdgeInsets.only(left: 28),
              child:const Text(
                '1. What should be the price for a formal shirt?',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(170, 122, 100, 1),
                  // rgba(161, 141, 116, 1)
                  fontFamily: 'Maitree',
                  fontWeight: FontWeight.w600,
                ),
              ),),
              SizedBox(height: 24,),
              Container(
              width: w*0.8,
              margin: EdgeInsets.only(left: 0),padding: EdgeInsets.only(left: 0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(199, 191, 191, 1), borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color.fromARGB(161,141,116,1),width: 2,),
                // border:Border.all(width:w*0.8,)
              ),
              child:DropdownButtonFormField<String>(
                decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromRGBO(199, 191, 191, 1)))),
                hint: const Text("select price"),
                items: _shirtprice.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Row(
                      // style:BoxDecoration(),
                      children: [
                        if (_currentShirtPrice.contains(dropDownStringItem))
                          // Text(dropDownStringItem,style: TextStyle(color: Color.fromRGBO(209, 68, 28, 1)),),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        if ((_currentShirtPrice.contains(dropDownStringItem))==0) 
                          // pattern => value,
                          const SizedBox(width: 8),Text(dropDownStringItem),
                      ],
                    ),
                  );
                }
                ).toList(),
                onChanged: (String? newValueselected) {
                  setState(() {
                    if (newValueselected != null) {
                      if (_currentShirtPrice.contains(newValueselected)) {
                        _currentShirtPrice.remove(newValueselected);
                      } else {
                        _currentShirtPrice.clear();
                        _currentShirtPrice.add(newValueselected);
                      }
                    }
                  });
                },
                value: null,
              ),),

              const SizedBox(height: 16),

              Padding(padding: const EdgeInsets.only(left:0),
              child:const Text(
                '2. Whom do you prefer to advise?',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(170, 122, 100, 1),
                  // rgba(161, 141, 116, 1)
                  fontFamily: 'Maitree',
                  fontWeight: FontWeight.w600,
                ),
              ),),
              SizedBox(height: 20,),
              Container(
                width: w*0.8,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(199, 191, 191, 1), borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color.fromARGB(161,141,116,1),width: 2,)
              ),
              child:DropdownButtonFormField<String>(
                decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromRGBO(199, 191, 191, 1)))),
                hint: const Text("select choice"),
                items: _choice.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Row(
                      children: [
                        if (_currentChoice.contains(dropDownStringItem))
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        const SizedBox(width: 8),
                        Text(dropDownStringItem),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? newValueselected) {
                  setState(() {
                    if (newValueselected != null) {
                      if (_currentChoice.contains(newValueselected)) {
                        _currentChoice.remove(newValueselected);
                      } else {
                        _currentChoice.clear();
                        _currentChoice.add(newValueselected);
                      }
                    }
                  });
                },
                value: null,
              ),),
              const SizedBox(height: 36),
              SizedBox(
                height: 43,
                width: w*0.4,
                // decoration:BoxDecoration(),
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // height:43,
                  shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
                  backgroundColor: Color.fromRGBO(121, 111, 111, 1),
    //               shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(20),
    // ),
                ),
                onPressed: () {
                  // Handle button click with selected values
                  print('Selected Shirt Prices: $_currentShirtPrice');
                  print('Selected Choices: $_currentChoice');
                },
                child: const Text(
                  'GOOD TO GO',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    // rgba(161, 141, 116, 1)
                    fontFamily: 'Maitree',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MaterialApp(
//     home: QuestionnairePage(),
//   ));
// }