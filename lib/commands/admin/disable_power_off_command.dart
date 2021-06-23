import 'package:flutter/material.dart';
import 'package:lf/models/admin_response_notifier.dart';
import 'package:lf/services/commands_execute_service.dart';
import 'package:provider/provider.dart';
import 'package:lf/view/shared_components/status_indicator.dart';

void disablePowerOff(BuildContext context) async {
  context.read<AdminResponseNotifier>().updateAdminResponse(
        StatusIndicator(message: 'attempting to disable automatic power off'),
      );

  var command = CommandsExecuteService();
  Map<String, int> options = {'offDelay': 65535};
  String response = await command.setOptions(options);
  if (!response.toLowerCase().contains('error')) {
    response = response + '\n disabled automatic power off';
  }
  context.read<AdminResponseNotifier>().updateAdminResponse(Text(response));
}
