import 'dart:convert';

import 'package:http/http.dart' as http;

class CameraRequest {
  static const Map<String, String> _headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  static const String _domain = '192.168.1.1';

  Future<String> execute(body) async {
    Uri uri = Uri.http(_domain, 'osc/commands/execute');

    var response =
        await http.post(uri, headers: _headers, body: jsonEncode(body));
    return response.body;
  }
}
