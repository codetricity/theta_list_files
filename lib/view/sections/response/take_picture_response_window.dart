import 'package:flutter/material.dart';
import 'package:lf/models/take_picture_response_notifier.dart';
import 'package:lf/view/sections/response/response_window.dart';
import 'package:provider/provider.dart';

class TakePictureResponseWindow extends ResponseWindow {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        color: Color(0xfffff8e1),
        child: context.watch<TakePictureResponseNotifier>().takePictureResponse,
      ),
    );
  }
}
