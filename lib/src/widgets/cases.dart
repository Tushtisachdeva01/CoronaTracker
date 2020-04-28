import 'package:covidtracker/res/app_colors.dart';
// import 'package:covidtracker/res/app_styles.dart';
// import 'package:covidtracker/src/widgets/appDrawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cases extends StatelessWidget {
  int total;
  int death;
  int recovered;
  int active;
  String date;
  Widget getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(Icons.warning, color: Colors.white, size: 40),
      ],
    );
  }

  Future<void> trying() async {
    try {
      var response =
          await http.get('https://api.covid19api.com/dayone/country/india');
      var result = json.decode(response.body);
      total = result.last['Confirmed'];
      death = result.last['Deaths'];
      recovered = result.last['Recovered'];
      active = result.last['Active'];
      date = result.last['Date'];
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          FutureBuilder(
            future: trying(),
            builder: (ctx, snapShot) => Card(
              elevation: 3,
              color: AppColors.cardBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                padding: const EdgeInsets.all(17),
                child: snapShot.connectionState == ConnectionState.waiting
                    ? Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.grey[800],
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            "CURRENT CASES IN INDIA",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 5),
                          Text(date),
                          SizedBox(height: 29),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    total.toString(),
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 25),
                                  ),
                                  Text(
                                    'Confirmed',
                                    textScaleFactor: 1.1,
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    active.toString(),
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 25),
                                  ),
                                  Text(
                                    'Active',
                                    textScaleFactor: 1.1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 29),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    recovered.toString(),
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 25),
                                  ),
                                  Text(
                                    'Recovered',
                                    textScaleFactor: 1.1,
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    death.toString(),
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                  ),
                                  Text(
                                    'Deceased',
                                    textScaleFactor: 1.1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
