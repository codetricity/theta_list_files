import 'package:flutter/material.dart';
import 'package:lf/view/screens/home/home_screen_requests.dart';

class RequestWindow extends StatelessWidget {
  final Widget requestWidget;

  const RequestWindow({
    Key? key,
    required this.requestWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        color: Colors.lime[50],
        child: requestWidget,
      ),
    );
  }
}
