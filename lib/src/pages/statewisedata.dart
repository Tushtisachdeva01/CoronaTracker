import 'package:flutter/material.dart';

import '../../env/config.dart';

class StateWiseDataDisplay extends StatelessWidget {
  final String code;
  final String stateName;
  StateWiseDataDisplay(this.code,this.stateName);
  Map<String, dynamic> data={};
  Future<void> getStateData() async {
    try {
      data = await Config().getStateData(code);
    } catch (err) {
      print(err);
      throw err;
    }
  }

  @override 
  Widget build(BuildContext context) {
    // print(code);
    return Scaffold(
      appBar: (AppBar(
        title: Text(
          stateName.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff1a1b25),
        centerTitle: true,
      )),
      body: FutureBuilder(
          future: getStateData(),
          builder: (ctx, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
                  ? Center(child: CircularProgressIndicator())
                  : snapshot.hasError
                      ? Center(
                          child: Text("no data found"),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "COMPLETE DATA",
                              textScaleFactor: 2,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.solid
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "ACTIVE : ",
                                  textScaleFactor: 1.6,
                                ),
                                Text(
                                  data['active'].toString(),
                                  textScaleFactor: 1.6,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "CONFIRMED : ",
                                  textScaleFactor: 1.6,
                                ),
                                Text(
                                  data['confirmed'].toString(),
                                  textScaleFactor: 1.6,
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "DECEASED : ",
                                  textScaleFactor: 1.6,
                                ),
                                Text(
                                  data['deceased'].toString(),
                                  textScaleFactor: 1.6,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "RECOVERED : ",
                                  textScaleFactor: 1.6,
                                ),
                                Text(
                                  data['recovered'].toString(),
                                  textScaleFactor: 1.6,
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Last Updated on ${data['date']}",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        )),
    );
  }
}
