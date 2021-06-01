import 'package:flutter/material.dart';
import 'package:lf/models/request_notifier.dart';
import 'package:lf/models/response_notifier.dart';
import 'package:lf/view/screens/home/thumbnail.dart';
import 'package:provider/provider.dart';
import 'get_thumb_bytes.dart';

void listThumbs(BuildContext context) async {
  var thumbInfoList = await getThumbBytes(
      context.read<RequestNotifier>().pictureDownloadNumber);
  Widget responseWindowThumbGrid = GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 2,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3),
      itemCount: thumbInfoList.length,
      itemBuilder: (context, index) {
        return ThumbNail(
            thumbBytes: thumbInfoList[index].thumbBytes,
            thumbUrl: thumbInfoList[index].url);
      });
  context
      .read<ResponseNotifier>()
      .updateResponseWindowContents(responseWindowThumbGrid);
}
