import 'package:flutter/material.dart';
import 'package:lf/commands/admin/disable_power_off_command.dart';

class DisablePowerOffButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          disablePowerOff(context);
        },
        child: Text('disable power off'));
  }
}
