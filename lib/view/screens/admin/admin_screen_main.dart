import 'package:flutter/material.dart';
import 'package:lf/view/sections/request/request_window.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffd84315)),
        backgroundColor: Colors.yellow[100],
      ),
      body: Column(
        children: [
          RequestWindow(
            requestWidget: Text('buttons'),
          ),
          Text('response section'),
        ],
      ),
    );
  }
}
