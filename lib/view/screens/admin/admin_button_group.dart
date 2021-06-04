import 'package:flutter/material.dart';
import 'package:lf/view/screens/admin/camera_reset_button.dart';
import 'package:lf/view/screens/admin/disable_power_off_button.dart';
import 'package:lf/view/screens/admin/disable_sleep_button.dart';
import 'package:lf/view/screens/admin/get_options_button.dart';

class AdminButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DisableSleepButton(),
            DisablePowerOffButton(),
            GetOptionsButton(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CameraResetButton(),
          ],
        )
      ],
    );
  }
}
