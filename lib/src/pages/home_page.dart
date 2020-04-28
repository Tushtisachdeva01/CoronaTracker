import 'package:covidtracker/src/pages/statewisedata.dart';
import 'package:covidtracker/src/widgets/appDrawer.dart';
import 'package:covidtracker/src/widgets/cases.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> states = [
    'Andaman and Nicobar Islands ',
    'Andhra Pradesh ',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chandigarh',
    'Chattisgarh',
    'Dadra and Nagar Haveli',
    'Daman and Diu',
    'Delhi',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu And Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Ladakh',
    'Lakshadweep Islands',
    'Madhya Pradesh',
    'Maharasthra',
    'Manipur',
    'Meghalya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Pondicherry',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal'
  ];
  final List<String> codes = [
    'AN',
    'AP',
    'AR',
    'AS',
    'BR',
    'CH',
    'CT',
    'DN',
    'DD',
    'DL',
    'GA',
    'GJ',
    'HR',
    'HP',
    'JK',
    'JH',
    'KA',
    'KL',
    'LA',
    'LD',
    'MP',
    'MH',
    'MN',
    'ML',
    'MZ',
    'NL',
    'OR',
    'PY',
    'PB',
    'RJ',
    'SK',
    'TN',
    'TG',
    'TR',
    'UP',
    'UT',
    'WB'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "COVID-19",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff1a1b25),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.79,
            child: Column(
              children: <Widget>[
                Cases(),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: states.length,
                    itemBuilder: (ctx, i) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => StateWiseDataDisplay(
                              codes[i],
                              states[i],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            gradient: RadialGradient(
                              colors: [
                                // Colors.grey[200],
                                Color(0xff15161E),
                                // Colors.black54,
                                Color(0xff242535),
                                // Colors.grey[300]
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            states[i],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
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