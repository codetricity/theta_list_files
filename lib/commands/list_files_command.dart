import '../services/camera_request_service.dart';

CameraRequest request = CameraRequest();
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
