import 'package:flutter/material.dart';
import 'package:lf/notifiers/request_notifier.dart';
import 'package:panorama/panorama.dart';
import 'package:provider/provider.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Panorama(
        child: Image.network(
          context.watch<RequestNotifier>().imageUrl,
        ),
      ),
    );
  }
}
