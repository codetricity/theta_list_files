import 'package:flutter/material.dart';

class ResponseWindow extends StatelessWidget {
  const ResponseWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        color: Colors.purple[50],
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text('response'),
        ),
      ),
    );
  }
}
