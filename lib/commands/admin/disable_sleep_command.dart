import 'package:flutter/material.dart';
import 'package:lf/models/admin_response_notifier.dart';
import 'package:lf/services/commands_execute_service.dart';
import 'package:provider/provider.dart';

import 'admin_status_indicator.dart';

void disableSleep(BuildContext context) async {
  context.read<AdminResponseNotifier>().updateAdminResponse(
        StatusIndicator(message: 'attempting to disable sleep'),
      );

  var command = CommandsExecuteService();
  Map<String, int> options = {'sleepDelay': 65535};
  String response = await command.setOptions(options);
  if (!response.toLowerCase().contains('error')) {
    response = response + '\n turned sleep delay off';
  }
  context.read<AdminResponseNotifier>().updateAdminResponse(Text(response));
  print(response);
}
