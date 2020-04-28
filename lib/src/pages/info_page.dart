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
          style: TextStyle(fontSize: 30),
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
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  getHeader(),
                  SizedBox(height: 36),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        (1).toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[700],
                    ),
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
                    leading: CircleAvatar(
                      child: Text(
                        (2).toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[700],
                    ),
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
                    leading: CircleAvatar(
                      child: Text(
                        (3).toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[700],
                    ),
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
                    leading: CircleAvatar(
                      child: Text(
                        (4).toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[700],
                    ),
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
                    leading: CircleAvatar(
                      child: Text(
                        (5).toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[700],
                    ),
                    title: Text(
                      'How Is Coronavirus (COVID-19) Treated?',
                      textScaleFactor: 1.7,
                    ),
                    subtitle: Text(
                        'Most people with COVID-19, including children, do not have serious problems. After seeing a doctor, most get better with rest and fluids. People who are very ill get care in a hospital with breathing help, IV fluids, and other treatments.Doctors and researchers are working on medicines and a vaccine for coronavirus. Antibiotics can\'t treat viruses so they won\'t help with the coronavirus. Medicines for the flu don\'t work either because the coronavirus is different from the flu virus.'),
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
                      'Can I catch COVID-19 from my pet?',
                      textScaleFactor: 1.7,
                    ),
                    subtitle: Text(
                      'Several dogs and cats (domestic cats and a tiger) in contact with infected humans have tested positive for COVID-19. In addition, ferrets appear to be susceptible to the infection. In experimental conditions, both cats and ferrets were able to transmit infection to other animals of the same species, but there is no evidence that these animals can transmit the disease to human and play a role in spreading COVID-19. COVID-19 is mainly spread through droplets produced when an infected person coughs, sneezes, or speaks.',
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
                      'How long does the virus survive on surfaces?',
                      textScaleFactor: 1.7,
                    ),
                    subtitle: Text(
                        'The most important thing to know about coronavirus on surfaces is that they can easily be cleaned with common household disinfectants that will kill the virus. Studies have shown that the COVID-19 virus can survive for up to 72 hours on plastic and stainless steel, less than 4 hours on copper and less than 24 hours on cardboard.'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
