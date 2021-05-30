import 'package:flutter/material.dart';
import 'package:lf/view/sections/request/request_window.dart';
import 'package:lf/view/sections/response/response_window.dart';

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
