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
                  leading: CircleAvatar(
                    child: Text(
                      (1).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Wash your hands frequently with hand wash',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (2).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Maintain social distancing',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (3).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Stay home as much as possible',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (4).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'If you have fever, cough and difficulty in breathing, seek medical care early',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (5).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Consider wearing a mask in public',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (6).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Clean and disinfect household surfaces',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (7).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Cover your coughs and sneezes',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (8).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Drink water every 15 minutes',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (9).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Avoid touching eyes, nose and mouth',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (10).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Avoid contact with wild or farm animals',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (11).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Try to stick to vegetarian diet',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (12).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Eat balanced nutrition',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (13).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Avoid eating Fast-food',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (14).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Inculcate citrus fruits and vitamin C tablets in your diet',
                    textScaleFactor: 1.25,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (15).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[700],
                  ),
                  title: Text(
                    'Gargle with hot water before sleeping',
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
