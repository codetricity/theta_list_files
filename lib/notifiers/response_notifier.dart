import 'package:flutter/cupertino.dart';

class ResponseNotifier extends ChangeNotifier {
  Widget _responseWindowContents = Text('response window');
  Widget get responseWindowContents => _responseWindowContents;
  void updateResponseWindowContents(responseWindowContents) {
    _responseWindowContents = responseWindowContents;
    notifyListeners();
  }
}
