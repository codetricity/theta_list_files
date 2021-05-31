import 'package:flutter/material.dart';
import 'package:lf/view/screens/home/home_screen_requests.dart';
import 'package:lf/view/sections/request/request_window.dart';
import 'package:lf/view/sections/response/response_window.dart';

import 'home_nav_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeNavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffd84315)),
        backgroundColor: Colors.yellow[100],
      ),
      body: Column(
        children: [
          RequestWindow(
            requestWidget: HomeScreenRequests(),
          ),
          ResponseWindow(),
        ],
      ),
    );
  }
}
