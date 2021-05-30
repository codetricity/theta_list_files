import 'package:http/http.dart' as http;
import 'package:lf/commands/data_structure/thumb_info.dart';

Future<List<ThumbInfo>> getThumbBytesService(List urlList) async {
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
