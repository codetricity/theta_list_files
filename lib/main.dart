import 'package:flutter/material.dart';
import 'package:lf/notifiers/response_notifier.dart';
import 'package:provider/provider.dart';
import 'gui/gui_screens/image_screen.dart';
import 'notifiers/request_notifier.dart';
import 'gui/gui_screens/home_screen.dart';

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
        '/image': (context) => ImageScreen()
      },
      initialRoute: '/',
    );
  }
}
