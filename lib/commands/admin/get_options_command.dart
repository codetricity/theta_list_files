import 'package:flutter/material.dart';
import 'package:lf/models/admin_response_notifier.dart';
import 'package:lf/services/commands_execute_service.dart';
import 'package:provider/provider.dart';
import 'package:lf/view/shared_components/status_indicator.dart';

void getOptions(BuildContext context) async {
  context.read<AdminResponseNotifier>().updateAdminResponse(
        StatusIndicator(message: 'getting options'),
      );

  var command = CommandsExecuteService();
  List<String> optionNames = ['sleepDelay', 'offDelay'];
  String response = await command.getOptions(optionNames);
  if (!response.toLowerCase().contains('error')) {
    response = response + '\n get options';
  }
  context.read<AdminResponseNotifier>().updateAdminResponse(Text(response));
}
