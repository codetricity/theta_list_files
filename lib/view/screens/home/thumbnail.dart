import 'package:flutter/material.dart';
import 'package:lf/models/request_notifier.dart';
import 'package:provider/provider.dart';
import 'package:lf/commands/data_structure/thumb_info.dart';

class ThumbNail extends StatelessWidget {
  final ThumbInfo thumbInfo;

  const ThumbNail({Key? key, required this.thumbInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<RequestNotifier>().updateImageUrl(thumbInfo.url);
        Navigator.pushNamed(context, '/image');
      },
      child: Container(
        height: 180,
        child: Container(
          child: Column(
            children: [
              Expanded(flex: 5, child: Image.memory(thumbInfo.thumbBytes)),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      thumbInfo.name,
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
