import 'package:flutter/material.dart';
import 'package:lf/notifiers/response_notifier.dart';
import 'package:provider/provider.dart';

class ResponseWindow extends StatelessWidget {
  const ResponseWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        color: Colors.purple[50],
        child: context.watch<ResponseNotifier>().responseWindowContents,
      ),
    );
  }
}
