import 'package:flutter/material.dart';

class RequestButtonGroup extends StatelessWidget {
  const RequestButtonGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('starting process to list files');
      },
      child: Text('list files'),
    );
  }
}
