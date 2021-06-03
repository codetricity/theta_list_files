import 'package:flutter/material.dart';
import 'package:lf/view/screens/admin/disable_sleep_button.dart';

class AdminButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DisableSleepButton(),
        TextButton(
          child: Text('button 2'),
          onPressed: () {},
        ),
        TextButton(
          child: Text('button 3'),
          onPressed: () {},
        ),
        TextButton(
          child: Text('button 4'),
          onPressed: () {},
        ),
      ],
    );
  }
}
