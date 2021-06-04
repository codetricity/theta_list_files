import 'package:flutter/material.dart';
import 'package:lf/commands/admin/camera_reset_command.dart';

class CameraResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          cameraResetCommand(context);
        },
        child: Text('camera reset'));
  }
}
