import 'package:flutter/material.dart';
import 'package:lf/models/admin_response_notifier.dart';
import 'package:lf/view/screens/admin/admin_screen_main.dart';
import 'package:lf/view/screens/take_picture/take_picture_main.dart';
import 'models/response_notifier.dart';
import 'package:provider/provider.dart';

import 'models/take_picture_response_notifier.dart';
import 'view/screens/image_screen.dart';
import 'models/request_notifier.dart';
import 'view/screens/home/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RequestNotifier()),
        ChangeNotifierProvider(create: (_) => ResponseNotifier()),
        ChangeNotifierProvider(create: (_) => AdminResponseNotifier()),
        ChangeNotifierProvider(create: (_) => TakePictureResponseNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/image': (context) => ImageScreen(),
        '/admin': (context) => AdminScreen(),
        '/takepicture': (context) => TakePictureScreen(),
      },
      initialRoute: '/',
    );
  }
}
