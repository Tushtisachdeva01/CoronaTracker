import 'package:covidtracker/res/app_colors.dart';
import 'package:covidtracker/res/app_styles.dart';
import 'package:covidtracker/src/widgets/appDrawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cases extends StatefulWidget {
  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
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
      // print(result);
      total = result.last['Confirmed'];
      death = result.last['Deaths'];
      recovered = result.last['Recovered'];
      active = result.last['Active'];
      date = result.last['Date'];
      // print(total);
      // print(death);
      // print(recovered);
      // print(active);
      // print(date.substring(0, 10));
    } catch (error) {
      print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff1a1b25),
        title: Text(
          "Covid-19",
          style: TextStyle(fontSize: 30, fontFamily: AppStyles.FONT_BOLD),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SizedBox(height: 36),
              FutureBuilder(
                future: trying(),
                builder: (ctx, snapShot) =>
                    snapShot.connectionState == ConnectionState.waiting
                        ? Center(child: CircularProgressIndicator())
                        : Card(
                            elevation: 3,
                            color: AppColors.cardBackground,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    "CURRENT CASES IN INDIA",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(height: 8),
                                  Text(date.substring(0, 10)),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            total.toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 25),
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
                                                color: Colors.blue,
                                                fontSize: 25),
                                          ),
                                          Text(
                                            'Active',
                                            textScaleFactor: 1.1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            recovered.toString(),
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 25),
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
                                                color: Colors.grey,
                                                fontSize: 25),
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
        ),
      ),
    );
  }
}
