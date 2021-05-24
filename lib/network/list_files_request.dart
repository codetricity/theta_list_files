import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> listFilesRequest(listFilesNumber) async {
  // test
  // Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  Uri uri = Uri.parse('http://192.168.1.1/osc/commands/execute');
  var headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };
  var body = {
    'name': 'camera.listFiles',
    'parameters': {
      'fileType': 'image',
      'entryCount': listFilesNumber,
      'maxThumbsize': 0
    }
  };

  var response = await http.post(uri, headers: headers, body: jsonEncode(body));

  return response.body;
}
