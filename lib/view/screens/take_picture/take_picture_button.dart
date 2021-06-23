import 'package:flutter/material.dart';
import 'package:lf/commands/take_picture/take_picture_command.dart';

class TakePictureButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          takePictureCommand(context);
        },
        child: Text('take picture'));
  }
}
