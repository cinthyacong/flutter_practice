import 'package:flutter/material.dart';
// import 'package:myfirstp/custom-widget/custom-card.dart';
import 'package:flutter_practice/custom-widget/practice01.dart';
import 'package:flutter_practice/custom-widget/practice02.dart';
import 'package:flutter_practice/custom-widget/practice03.dart';
import 'package:flutter_practice/custom-widget/practice04.dart';
import 'package:flutter_practice/custom-widget/practice05.dart';
import 'package:flutter_practice/custom-widget/practice06.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        elevation: 0,
        title: Text("Flutter Practice"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(children: [
            Practice01Card(),
            Practice02Card(),
            Practice03Card(),
            Practice04Card(),
            Practice05Card(),
            Practice06Card(),
          ]),
        ),
      ),
    );
  }
}
