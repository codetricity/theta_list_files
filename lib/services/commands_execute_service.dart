import 'dart:convert';

import 'package:http/http.dart' as http;

class CommandsExecuteService {
  static const Map<String, String> _headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  static const String _domain = '192.168.1.1';

  Future<String> execute(body) async {
    Uri uri = Uri.http(_domain, 'osc/commands/execute');
    return await post(uri, jsonEncode(body));
  }

  Future<String> setOptions(Map<dynamic, dynamic> options) async {
    var body = {
      'name': 'camera.setOptions',
      'parameters': {'options': options}
    };
    return await execute(body);
  }

  Future<String> getOptions(List<String> optionNames) async {
    var body = {
      'name': 'camera.getOptions',
      'parameters': {'optionNames': optionNames}
    };
    return await execute(body);
  }

  Future<String> post(uri, String body) async {
    try {
      var response = await http.post(uri, headers: _headers, body: body);
      return response.body;
    } catch (error) {
      print('error');
      return error.toString();
    }
  }
}
