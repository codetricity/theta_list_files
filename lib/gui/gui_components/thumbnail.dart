import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:lf/notifiers/request_notifier.dart';
import 'package:provider/provider.dart';

class ThumbNail extends StatelessWidget {
  final Uint8List thumbBytes;
  final String thumbUrl;

  const ThumbNail({Key? key, required this.thumbBytes, required this.thumbUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<RequestNotifier>().updateImageUrl(thumbUrl);
        Navigator.pushNamed(context, '/image');
      },
      child: Container(
        height: 180,
        child: Image.memory(thumbBytes),
      ),
    );
  }
}
