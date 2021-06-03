import 'package:flutter/material.dart';
import 'package:lf/commands/admin/disable_sleep_command.dart';

class DisableSleepButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          disableSleep(context);
        },
        child: Text('disable sleep'));
  }
}
