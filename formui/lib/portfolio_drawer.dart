import 'package:flutter/material.dart';

class PortfolioDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Nikunj Shukla'),
            accountEmail: Text('nikunjs6324@gmail.com'),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            title: Text('About Me'),
          ),
          ListTile(
            title: Text('Contact'),
          ),
          ListTile(
            title: Text('GitHub'),
          ),
        ],
      ),
    );
  }
}