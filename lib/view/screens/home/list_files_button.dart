import 'package:flutter/material.dart';
import 'package:lf/commands/list_files/list_files.dart';
import 'package:lf/commands/list_files/list_thumbs.dart';
import 'package:lf/models/request_notifier.dart';
import 'package:provider/provider.dart';

class ListFilesButton extends StatelessWidget {
  const ListFilesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (context.read<RequestNotifier>().getThumbFlag) {
          listThumbs(context);
        } else {
          listFiles(context);
        }
      },
      child: Text('list files'),
    );
  }
}
