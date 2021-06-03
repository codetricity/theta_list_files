import 'package:flutter/material.dart';
import 'package:lf/commands/admin/get_options_command.dart';

class GetOptionsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          getOptions(context);
        },
        child: Text('get options'));
  }
}
