import 'dart:convert';
import 'dart:typed_data';

import 'package:lf/network/list_files_request.dart';
import 'package:http/http.dart' as http;

Future<List<Uint8List>> getThumbBytes(double thumbNumber) async {
  var fileListing = await listFilesRequest(thumbNumber);
  var fileMap = jsonDecode(fileListing);
  List<String> urlList = [];
  var entriesList = fileMap['results']['entries'];

  for (var entry in entriesList) {
    urlList.add(entry['fileUrl']);
  }

  List<Uint8List> thumbByteList = [];

  var client = http.Client();

  for (String url in urlList) {
    url = url + 'type=thumb';
    Uri uri = Uri.parse(url);
    try {
      final imageData = await client.get(uri);
      thumbByteList.add(imageData.bodyBytes);
    } catch (error) {
      print(error);
      break;
    }
  }
  client.close();
  return thumbByteList;
}
