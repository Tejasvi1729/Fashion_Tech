
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Welcome!', style: TextStyle(fontSize: 24)),
    );
  }
}
