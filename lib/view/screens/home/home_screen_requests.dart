import 'package:flutter/material.dart';
import 'package:lf/models/request_notifier.dart';
import 'package:lf/view/screens/home/home_screen_button_group.dart';
import 'package:lf/view/screens/home/home_screen_settings_window.dart';
import 'package:provider/provider.dart';

class HomeScreenRequests extends StatelessWidget {
  const HomeScreenRequests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 10,
        ),
        HomeScreenButtonGroup(),
        Text(
          context
              .watch<RequestNotifier>()
              .pictureDownloadNumber
              .ceil()
              .toString(),
        ),
        HomeScreenSettingsWindow(),
      ],
    );
  }
}
