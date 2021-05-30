import 'package:flutter/material.dart';
import 'package:lf/models/request_notifier.dart';
import 'package:provider/provider.dart';

import 'request_button_group.dart';
import 'request_settings_window.dart';

class RequestWindow extends StatelessWidget {
  const RequestWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        color: Colors.lime[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            RequestButtonGroup(),
            Text(
              context
                  .watch<RequestNotifier>()
                  .pictureDownloadNumber
                  .ceil()
                  .toString(),
            ),
            RequestSettingsWindow(),
          ],
        ),
      ),
    );
  }
}
