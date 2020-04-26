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
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                getHeader(),
                SizedBox(height: 36),
                ListTile(
                  leading: Text('1.'),
                  title: Text('Wash your hands frequently'),
                ),
                ListTile(
                  leading: Text('2.'),
                  title: Text('Maintain social distancing'),
                ),
                ListTile(
                  leading: Text('3.'),
                  title: Text('Stay home as much as possible'),
                ),
                ListTile(
                  leading: Text('4.'),
                  title: Text('If you have fever, cough and difficulty breathing, seek medical care early'),
                ),
                ListTile(
                  leading: Text('5.'),
                  title: Text('Consider wearing a mask in public'),
                ),
                ListTile(
                  leading: Text('6.'),
                  title: Text('Clean and disinfect household surfaces'),
                ),
                ListTile(
                  leading: Text('7.'),
                  title: Text('Cover your coughs and sneezes'),
                ),
                ListTile(
                  leading: Text('8.'),
                  title: Text('Drink water every 15 minutes'),
                ),
                ListTile(
                  leading: Text('9.'),
                  title: Text('Avoid touching eyes, nose and mouth'),
                ),
                ListTile(
                  leading: Text('10.'),
                  title: Text('Avoid contact with wild or farm animals'),
                ),
                ListTile(
                  leading: Text('11.'),
                  title: Text('Thoroughly cook meat and eggs'),
                ),
                ListTile(
                  leading: Text('12.'),
                  title: Text('Eat balanced nutrition'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
