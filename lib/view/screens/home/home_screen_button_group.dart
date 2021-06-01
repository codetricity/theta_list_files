import 'package:flutter/material.dart';
import 'list_files_button.dart';

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
