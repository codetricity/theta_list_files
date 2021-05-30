import 'dart:convert';
import 'package:lf/commands/data_structure/thumb_info.dart';
import 'package:lf/commands/list_files_command.dart';
import 'package:lf/services/get_thumb_bytes_service.dart';

Future<List<ThumbInfo>> getThumbBytes(double thumbNumber) async {
  var fileListing = await listFilesCommand(thumbNumber);
  var fileMap = jsonDecode(fileListing);
  List<String> urlList = [];
  var entriesList = fileMap['results']['entries'];
  for (var entry in entriesList) {
    urlList.add(entry['fileUrl']);
  }

  var thumbInfoList = await getThumbBytesService(urlList);

  return thumbInfoList;
}
