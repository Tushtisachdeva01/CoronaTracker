import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Widget getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "HEALTH TIPS",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                getHeader(),
                SizedBox(height: 30),
                ListTile(
                  leading: Text(
                    '1.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Wash your hands frequently',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '2.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Maintain social distancing',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '3.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Stay home as much as possible',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '4.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'If you have fever, cough and difficulty breathing, seek medical care early',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '5.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Consider wearing a mask in public',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '6.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Clean and disinfect household surfaces',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '7.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Cover your coughs and sneezes',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '8.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Drink water every 15 minutes',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '9.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Avoid touching eyes, nose and mouth',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '10.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Avoid contact with wild or farm animals',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '11.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Thoroughly cook meat and eggs',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '12.',
                    textScaleFactor: 1.25,
                  ),
                  title: Text(
                    'Eat balanced nutrition',
                    textScaleFactor: 1.25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
