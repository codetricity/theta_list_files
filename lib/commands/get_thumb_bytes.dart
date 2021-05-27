import 'dart:convert';
import 'package:lf/models/thumb_info.dart';
import 'package:lf/commands/list_files_request.dart';
import 'package:http/http.dart' as http;

Future<List<ThumbInfo>> getThumbBytes(double thumbNumber) async {
  var fileListing = await listFilesRequest(thumbNumber);
  var fileMap = jsonDecode(fileListing);
  List<String> urlList = [];
  var entriesList = fileMap['results']['entries'];

  for (var entry in entriesList) {
    urlList.add(entry['fileUrl']);
  }

  List<ThumbInfo> thumbInfoList = [];

  var client = http.Client();

  for (String url in urlList) {
    var thumbUrl = url + 'type=thumb';
    Uri uri = Uri.parse(thumbUrl);
    try {
      final imageData = await client.get(uri);
      thumbInfoList.add(
        ThumbInfo(thumbBytes: imageData.bodyBytes, url: url),
      );
    } catch (error) {
      print(error);
      break;
    }
  }
  client.close();
  return thumbInfoList;
}
