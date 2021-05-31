import 'package:flutter/material.dart';

class AdminButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          child: Text('button 1'),
          onPressed: () {},
        ),
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
