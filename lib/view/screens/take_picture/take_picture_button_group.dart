import 'package:flutter/material.dart';
import 'package:lf/view/screens/take_picture/shutter_button.dart';

class TakePictureButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ShutterButton(),
            Text('button 2'),
            Text('button 3'),
          ],
        ),
      ],
    );
  }
}
