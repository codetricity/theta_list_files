import 'package:flutter/material.dart';
import 'package:lf/network/list_files_request.dart';
import 'package:lf/notifiers/request_notifier.dart';
import 'package:provider/provider.dart';

class ListFilesButton extends StatelessWidget {
  const ListFilesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        listFilesRequest(context.read<RequestNotifier>().pictureDownloadNumber);
      },
      child: Text('list files'),
    );
  }
}
