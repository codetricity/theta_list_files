import '../../services/commands_execute_service.dart';

CommandsExecuteService request = CommandsExecuteService();
Future<String> listFilesCommand(double listFilesNumber) async {
  var body = {
    'name': 'camera.listFiles',
    'parameters': {
      'fileType': 'image',
      'entryCount': listFilesNumber.ceil(),
      'maxThumbsize': 0
    }
  };

  return await request.execute(body);
}
