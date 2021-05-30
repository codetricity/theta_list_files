import 'package:flutter/material.dart';
import 'package:lf/view/screens/admin/admin_screen_main.dart';
import 'models/response_notifier.dart';
import 'package:provider/provider.dart';

import 'view/screens/image_screen.dart';
import 'models/request_notifier.dart';
import 'view/screens/home/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RequestNotifier()),
        ChangeNotifierProvider(create: (_) => ResponseNotifier()),
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
        'admin': (context) => AdminScreen(),
      },
      initialRoute: '/',
    );
  }
}
