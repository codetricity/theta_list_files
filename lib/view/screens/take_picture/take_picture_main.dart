import 'package:flutter/material.dart';
import 'package:lf/view/sections/request/request_window.dart';
import 'package:lf/view/sections/response/take_picture_response_window.dart';

import 'take_picture_button_group.dart';

class TakePictureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffd84315)),
        backgroundColor: Colors.yellow[100],
        title: Text(
          'Take Picture',
          style: TextStyle(color: Color(0xffd84315)),
        ),
      ),
      body: Column(
        children: [
          RequestWindow(requestWidget: TakePictureButtonGroup()),
          TakePictureResponseWindow(),
        ],
      ),
    );
  }
}
