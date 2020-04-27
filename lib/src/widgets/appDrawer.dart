import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  call(String name, String numb) {
    return ListTile(
      leading: Icon(
        Icons.phone,
        color: Color(0xff1a1b25),
      ),
      title: Text(
        name,
        style: TextStyle(color: Color(0xff1a1b25)),
      ),
      onTap: () => launch("tel://$numb"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: Color(0xff1a1b25),
            title: Text('Help Line Numbers'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          SingleChildScrollView(
            child: Container(
              // height: 500,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  call('abc', '124'),
                  // call('abc', '124'),
                  // call('abc', '124'),
                  // call('abc', '124'),
                  // call('abc', '124'),
                  // call('abc', '124'),
                  // call('abc', '124'),
                  // call('abc', '124'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
