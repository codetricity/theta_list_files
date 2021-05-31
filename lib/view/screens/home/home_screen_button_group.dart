import 'package:flutter/material.dart';
import 'package:lf/view/components/list_files_button.dart';

class HomeScreenButtonGroup extends StatelessWidget {
  const HomeScreenButtonGroup({
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
