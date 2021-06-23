import 'package:flutter/material.dart';
import 'package:lf/models/admin_response_notifier.dart';
import 'package:provider/provider.dart';

import 'package:lf/view/shared_components/status_indicator.dart';
import '../../services/commands_execute_service.dart';

CommandsExecuteService request = CommandsExecuteService();
void cameraResetCommand(BuildContext context) async {
  var body = {'name': 'camera.reset', 'parameters': {}};

  context.read<AdminResponseNotifier>().updateAdminResponse(
        StatusIndicator(message: 'attempting to reset camera settings'),
      );

  var response = await request.execute(body);
  if (!response.toLowerCase().contains('error')) {
    response = response +
        '\n reset camera settings \n'
            'turn on camera and reconnect to wifi';
  }
  context.read<AdminResponseNotifier>().updateAdminResponse(Text(response));
  print(response);
}
