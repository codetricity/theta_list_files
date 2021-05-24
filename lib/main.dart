import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifiers/request_notifier.dart';
import 'gui/gui_screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => RequestNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
