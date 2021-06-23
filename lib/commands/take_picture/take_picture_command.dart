import 'package:flutter/cupertino.dart';
import 'package:lf/models/take_picture_response_notifier.dart';
import 'package:lf/view/shared_components/status_indicator.dart';
import 'package:provider/provider.dart';

import '../../services/commands_execute_service.dart';

CommandsExecuteService request = CommandsExecuteService();
Future<String> takePictureCommand(BuildContext context) async {
  var body = {'name': 'camera.takePicture', 'parameters': {}};

  context.read<TakePictureResponseNotifier>().updateTakePictureResponse(
        StatusIndicator(message: 'attempting to take picture'),
      );

  var response = await request.execute(body);
  if (!response.toLowerCase().contains('error')) {
    response = response + 'took picture';
  }
  context
      .read<TakePictureResponseNotifier>()
      .updateTakePictureResponse(Text(response));
  print(response);
  return await request.execute(body);
}
