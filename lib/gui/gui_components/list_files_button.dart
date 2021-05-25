import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lf/network/get_thumb_bytes.dart';
import 'package:lf/network/list_files_request.dart';
import 'package:lf/notifiers/request_notifier.dart';
import 'package:lf/notifiers/response_notifier.dart';
import 'package:provider/provider.dart';

class ListFilesButton extends StatelessWidget {
  const ListFilesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _listFiles() async {
      var response = await listFilesRequest(
          context.read<RequestNotifier>().pictureDownloadNumber);

      Map<dynamic, dynamic> jsonMap = jsonDecode(response);
      JsonEncoder encoder = JsonEncoder.withIndent('  ');

      Widget responseText =
          SingleChildScrollView(child: Text(encoder.convert(jsonMap)));

      context
          .read<ResponseNotifier>()
          .updateResponseWindowContents(responseText);
    }

    void _listThumbs() async {
      var thumbByteList = await getThumbBytes(
          context.read<RequestNotifier>().pictureDownloadNumber);
      Widget responseWindowThumbGrid = GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 2,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3),
          itemCount: thumbByteList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 180,
              child: Image.memory(thumbByteList[index]),
            );
          });
      context
          .read<ResponseNotifier>()
          .updateResponseWindowContents(responseWindowThumbGrid);
    }

    return TextButton(
      onPressed: () {
        if (context.read<RequestNotifier>().getThumbFlag) {
          _listThumbs();
        } else {
          _listFiles();
        }
      },
      child: Text('list files'),
    );
  }
}
