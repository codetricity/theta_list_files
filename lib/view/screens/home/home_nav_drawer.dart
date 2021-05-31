import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        ],
      ),
    );
  }
}
