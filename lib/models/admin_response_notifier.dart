import 'package:flutter/cupertino.dart';

class AdminResponseNotifier extends ChangeNotifier {
  Widget _adminResponse = Text('admin response');
  Widget get adminResponse => _adminResponse;
  void updateAdminResponse(adminResponse) {
    _adminResponse = adminResponse;
    notifyListeners();
  }
}
