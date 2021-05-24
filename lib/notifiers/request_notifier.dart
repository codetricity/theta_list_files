import 'package:flutter/material.dart';

class RequestNotifier extends ChangeNotifier {
  /// number of pictures to list
  double _pictureDownloadNumber = 5;
  double get pictureDownloadNumber => _pictureDownloadNumber;
  void updatePictureDownloadNumber(double pictureDownloadNumber) {
    /// if the number of files to list is zero, there is no
    /// need to talk to the camera, so set the minimum number
    /// to at least 1.
    if (pictureDownloadNumber == 0) {
      _pictureDownloadNumber = 1;
    } else {
      _pictureDownloadNumber = pictureDownloadNumber;
    }
    notifyListeners();
  }

  /// get thumbnails or just list files
  bool _getThumbFlag = false;
  bool get getThumbFlag => _getThumbFlag;
  void updateGetThumbFlag(getThumbFlag) {
    _getThumbFlag = getThumbFlag;
    notifyListeners();
  }
}
