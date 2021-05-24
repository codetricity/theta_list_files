import 'dart:convert';

import 'package:flutter/material.dart';
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
    return TextButton(
      onPressed: () async {
        var response = await listFilesRequest(
            context.read<RequestNotifier>().pictureDownloadNumber);

        Map<dynamic, dynamic> jsonMap = jsonDecode(response);
        JsonEncoder encoder = JsonEncoder.withIndent('  ');

        context
            .read<ResponseNotifier>()
            .updateResponseWindowContents(Text(encoder.convert(jsonMap)));
      },
      child: Text('list files'),
    );
  }
}
