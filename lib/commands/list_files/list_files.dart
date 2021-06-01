import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lf/models/request_notifier.dart';
import 'package:lf/models/response_notifier.dart';
import 'package:provider/provider.dart';

import 'list_files_command.dart';

void listFiles(BuildContext context) async {
  var response = await listFilesCommand(
      context.read<RequestNotifier>().pictureDownloadNumber);

  Map<dynamic, dynamic> jsonMap = jsonDecode(response);
  JsonEncoder encoder = JsonEncoder.withIndent('  ');

  Widget responseText =
      SingleChildScrollView(child: Text(encoder.convert(jsonMap)));

  context.read<ResponseNotifier>().updateResponseWindowContents(responseText);
}
