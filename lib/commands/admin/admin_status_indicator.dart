import 'package:flutter/material.dart';

class StatusIndicator extends StatelessWidget {
  final String message;

  const StatusIndicator({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(flex: 3, child: Text(message)),
          Expanded(
            flex: 1,
            child: CircularProgressIndicator(),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }
}
