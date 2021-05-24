import 'package:flutter/material.dart';
import 'package:lf/gui/gui_components/list_files_button.dart';

class RequestButtonGroup extends StatelessWidget {
  const RequestButtonGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ListFilesButton(),
      ],
    );
  }
}
