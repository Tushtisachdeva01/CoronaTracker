import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<dynamic> article = [];
  bool title;
  Widget getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LATEST NEWS",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }

  Future<void> trying() async {
    try {
      var response = await http.get(
          'http://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=c452d9f6399d49aa98a0c4e88e4448be');
      var result = json.decode(response.body);
      article = result['articles'];
    } catch (error) {
      print(error);
    }
  }

  _launch(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 700,
            width: 400,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                getHeader(),
                SizedBox(height: 36),
                FutureBuilder(
                  future: trying(),
                  builder: (ctx, snapShot) => snapShot.connectionState ==
                          ConnectionState.waiting
                      ? Center(child: CircularProgressIndicator())
                      : Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (_, i) => InkWell(
                              onTap: () =>
                                  _launch(article[i]['url'].toString()),
                              splashColor: Colors.red,
                              child: Card(
                                elevation: 6,
                                color: Color(0xff242535),
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(8),
                                  leading: CircleAvatar(
                                    child: Text(
                                      (i + 1).toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Colors.grey[700],
                                  ),
                                  title: Text(
                                    // (article[i]['title'].contains('corona') ||
                                    //             article[i]['title']
                                    //                 .contains('covid') ||
                                    //             article[i]['title']
                                    //                 .contains('lockdown') ||
                                    //             article[i]['title']
                                    //                 .contains('lockdown') ||
                                    //         article[i]['title']
                                    //             .contains('Corona') ||
                                    //         article[i]['title']
                                    //             .contains('CORONA') ||
                                    //         article[i]['title']
                                    //             .contains('symptoms') ||
                                    //         article[i]['title']
                                    //             .contains('vaccine') ||
                                    //             article[i]['title']
                                    //             .contains('Vaccine') ||
                                    //         article[i]['title']
                                    //             .contains('pandemic') ||
                                    //             article[i]['title']
                                    //             .contains('Covid') ||
                                    //         article[i]['title'].contains('Cov')) ?
                                    article[i]['title'],
                                    // : '',
                                    textScaleFactor: 1.47,
                                  ),
                                  subtitle: article[i]['description'] != null
                                      ? Text(
                                          article[i]['description'],
                                          textScaleFactor: 1.1,
                                        )
                                      : Text(
                                          'No Descrption',
                                          textScaleFactor: 1.1,
                                        ),
                                ),
                              ),
                            ),
                            itemCount: article.length,
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
