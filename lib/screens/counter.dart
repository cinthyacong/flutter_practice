import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_practice/screens/home.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${_count}"),
              Container(
                // width: double.infinity,
                // height: 80,
                child: ElevatedButton(
                  // icon: Icon(Icons.share, size: 40),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.red,
                  //   elevation: 0,
                  // ),
                  onPressed: () {
                    print("Clic");
                    Get.to(HomeScreen());
                    // print(_count);
                    // setState(() {
                    //   _count = _count + 1;
                    // });
                  },
                  child: Text("Increase"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
