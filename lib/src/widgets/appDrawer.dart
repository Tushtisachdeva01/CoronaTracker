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
        style: TextStyle(color: Color(0xff1a1b25),),
      ),
      onTap: () => launch("tel://$numb"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          AppBar(
            backgroundColor: Color(0xff1a1b25),
            title: Text('Help Line Numbers'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          Container(
            height: MediaQuery.of(context).size.height*0.77,
                      child: SingleChildScrollView(
              child: Container(
                // height: 500,
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    call('CENTRAL HELPLINE', '+91-11-23978046'),
                    call('Andaman & Nicobar Islands', '03192-232102'),
                    call('Andhra Pradesh', '0866-2410978'),
                    call('Arunachal Pradesh', '9436055743'),
                    call('Assam ', '6913347770'),
                    call('Bihar', '104'),
                    call('Chandigarh', '9779558282'),
                    call('Chhattisgarh', '104'),
                    call('Daman and Diu', '104'),
                    call('Delhi', '011-22307145'),
                    call('Goa', '104'),
                    call('Gujarat', '104'),
                    call('Haryana', '8558893911'),
                    call('Himachal Pradesh', '104'),
                    call('Jammu & Kashmir', '01912520982'),
                    call('Jharkhand', '104'),
                    call('Karnataka', '104'),
                    call('Kerala', '0471-2552056'),
                    call('Ladakh', '01982256462'),
                    call('Lakshwadeep Islands', '104'),
                    call('Madhya Pradesh', '104'),
                    call('Maharashtra', '020-26127394'),
                    call('Manipur', '3852411668'),
                    call('Meghalaya', '108'),
                    call('Mizoram', '102'),
                    call('Nagaland', '7005539653'),
                    call('Odisha', '943994859'),
                    call('Punjab', '104'),
                    call('Puducherry', '104'),
                    call('Rajasthan', '0141-2225624'),
                    call('Sikkim', '104'),
                    call('Tamil Nadu', '044-29510500'),
                    call('Telangana', '104'),
                    call('Tripura', '0381-2315879'),
                    call('Uttarakhand', '104'),
                    call('Uttar Pradesh', '18001805145'),
                    call('West Bengal', '1800313444222'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
