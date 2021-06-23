import 'package:flutter/material.dart';

class HomeNavDrawer extends StatelessWidget {
  const HomeNavDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('camera admin'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/admin');
            },
          ),
          ListTile(
            title: Text('take picture'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/takepicture');
            },
          )
        ],
      ),
    );
  }
}
