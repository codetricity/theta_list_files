import 'package:flutter/material.dart';
import 'package:lf/view/screens/take_picture/take_picture_button.dart';

class TakePictureButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TakePictureButton(),
            Text('button 2'),
            Text('button 3'),
          ],
        ),
      ],
    );
  }
}
