import 'package:flutter/material.dart';

class BusinessScreen extends StatefulWidget {
  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  var containerColor = Colors.red;
  @override
  //By Pressing Set State the code will be rebuild from Build fucnction
  Widget build(BuildContext context) {
    // int i = 5;
    // String s = "new sting";
    // var j = "4.5";
    print("i am rebuilding");
    return Center(
        child: GestureDetector(
      onTap: () {
        setState(() {
          containerColor = Colors.blue;
        });
        print('Single Tap');
      },
      onDoubleTap: () {
        setState(() {
          containerColor = Colors.green;
        });
        print('Double Tap');
      },
      onLongPress: () {
        setState(() {
          containerColor = Colors.yellow;
        });
        print('Long Press');
      },
      child: Container(
        height: 100,
        width: 100,
        color: containerColor,
      ),
    ));
  }
}
