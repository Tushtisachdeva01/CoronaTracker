import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final String assetName = 'assets/images/india.svg';
  final notifier = ValueNotifier(Offset.zero);

  Widget getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "FAQ's",
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                  title: Text(
                    'What Is Coronavirus (COVID-19)?',
                    textScaleFactor: 1.7,
                  ),
                  subtitle: Text(
                      'At the end of 2019, a new type of coronavirus began making people sick with flu-like symptoms. The illness is called coronavirus disease-19 — COVID-19 for short. The virus spreads easily and has now affected people in many countries.'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Text('2.'),
                  title: Text(
                    'What Are the Signs & Symptoms of Coronavirus (COVID-19)?',
                    textScaleFactor: 1.7,
                  ),
                  subtitle: Text(
                      'The coronavirus (COVID-19) causes a fever, cough, and trouble breathing. Some people have a sore throat. Symptoms are a bit like those people have with a cold or the flu. The virus can be more serious in some people, especially if they are sick or have health problems.'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Text('3.'),
                  title: Text(
                    'How Does Coronavirus (COVID-19) Spread?',
                    textScaleFactor: 1.7,
                  ),
                  subtitle: Text(
                      'People can catch coronavirus from others who have the virus. Most often, this happens when an infected person sneezes or coughs, sending tiny droplets into the air. These can land in the nose, mouth, or eyes of someone nearby, or be breathed in.Less often, people can get infected if they touch an infected droplet on a surface and then touch their own nose, mouth, or eyes.'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Text('4.'),
                  title: Text(
                    'Is Coronavirus (COVID-19) Dangerous to Children?',
                    textScaleFactor: 1.7,
                  ),
                  subtitle: Text(
                      'There seem to be far fewer cases of the virus reported in children. Most kids with the infection caught it from someone they lived with or a family member. The virus seems to usually cause a milder infection in children than in adults or older people.'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Text('5.'),
                  title: Text(
                    'How Is Coronavirus (COVID-19) Treated?',
                    textScaleFactor: 1.7,
                  ),
                  subtitle: Text(
                      'Most people with COVID-19, including children, do not have serious problems. After seeing a doctor, most get better with rest and fluids. People who are very ill get care in a hospital with breathing help, IV fluids, and other treatments.Doctors and researchers are working on medicines and a vaccine for coronavirus. Antibiotics can\'t treat viruses so they won\'t help with the coronavirus. Medicines for the flu don\'t work either because the coronavirus is different from the flu virus.'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
