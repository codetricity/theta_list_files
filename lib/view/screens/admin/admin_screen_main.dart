import 'package:flutter/material.dart';
import 'package:lf/view/screens/admin/admin_button_group.dart';
import 'package:lf/view/sections/request/request_window.dart';
import 'package:lf/view/sections/response/response_window.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffd84315)),
        backgroundColor: Colors.yellow[100],
        title: Text(
          'Camera Admin',
          style: TextStyle(color: Color(0xffd84315)),
        ),
      ),
      body: Column(
        children: [
          RequestWindow(requestWidget: AdminButtonGroup()),
          ResponseWindow(),
        ],
      ),
    );
  }
}
