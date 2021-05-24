import 'package:flutter/material.dart';
import 'package:lf/gui/gui_sections/request/request_window.dart';
import 'package:lf/gui/gui_sections/response_window.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RequestWindow(),
          ResponseWindow(),
        ],
      ),
    );
  }
}
