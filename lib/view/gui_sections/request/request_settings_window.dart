import 'package:flutter/material.dart';
import 'package:lf/controller/notifiers/request_notifier.dart';
import 'package:provider/provider.dart';

class RequestSettingsWindow extends StatelessWidget {
  const RequestSettingsWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('# files'),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Slider(
            value: context.read<RequestNotifier>().pictureDownloadNumber,
            min: 0,
            max: 25,
            divisions: 5,
            label: context
                .watch<RequestNotifier>()
                .pictureDownloadNumber
                .ceil()
                .toString(),
            onChanged: (double value) {
              context
                  .read<RequestNotifier>()
                  .updatePictureDownloadNumber(value);
            },
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: SwitchListTile(
              value: context.watch<RequestNotifier>().getThumbFlag,
              title: Text(
                'thumbs',
                textAlign: TextAlign.right,
              ),
              onChanged: (bool value) {
                context.read<RequestNotifier>().updateGetThumbFlag(value);
              }),
        ),
      ],
    );
  }
}
