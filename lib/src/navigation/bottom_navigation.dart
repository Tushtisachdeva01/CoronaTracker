import 'package:covidtracker/res/app_colors.dart';
import 'package:covidtracker/src/pages/about_page.dart';
import 'package:covidtracker/src/pages/info_page.dart';
import 'package:covidtracker/src/pages/news_page.dart';
import 'package:covidtracker/src/widgets/cases.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  MyBottomNavigation({Key key}) : super(key: key);

  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  Widget getWidget(int position) {
    switch (position) {
      case 0:
        return Cases();
      case 1:
        return InfoPage();
      case 2:
        return NewsPage();
      case 3:
        return AboutPage();
      default:
        return Text('Development in progress');
    }
  }

  BottomNavigationBarItem _getNavigationItem(IconData icon) {
    return BottomNavigationBarItem(
        backgroundColor: AppColors.bottomTabBackground,
        icon: Icon(icon, color: Colors.grey),
        title: Icon(Icons.minimize, color: AppColors.accentColor));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getWidget(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 76,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              _getNavigationItem(Icons.dashboard),
              _getNavigationItem(Icons.question_answer),
              _getNavigationItem(Icons.new_releases),
              _getNavigationItem(Icons.local_hospital)
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
