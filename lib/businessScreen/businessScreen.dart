import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        print('Single Tap');
      },
      onDoubleTap: () {
        print('Double Tap');
      },
      onLongPress: () {
        print('Long Press');
      },
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    ));
  }
}
