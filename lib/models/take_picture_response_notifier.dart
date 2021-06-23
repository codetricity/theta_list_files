import 'package:flutter/material.dart';

class TakePictureResponseNotifier extends ChangeNotifier {
  Widget _takePictureResponse = Text('take picture response');
  Widget get takePictureResponse => _takePictureResponse;

  // using this type of setter in order to run
  // notifyListeners() when the variable is
  // updated
  void updateTakePictureResponse(takePictureResponse) {
    _takePictureResponse = takePictureResponse;
    notifyListeners();
  }
}
