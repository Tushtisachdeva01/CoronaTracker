import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Map<String, Object>> article;
  List<Map<String, Object>> title;
  Widget getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LATEST NEWS",
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }

  Future<void> trying() async {
    var response = await http.get(
        'http://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=c452d9f6399d49aa98a0c4e88e4448be');
    // print(response.body);
    var result = json.decode(response.body);
      article = result['articles'];
      // title=article.where(test)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                getHeader(),
                SizedBox(height: 36),
                FutureBuilder(
                  future: trying(),
                  builder: (ctx, snapShot) =>
                      snapShot.connectionState == ConnectionState.waiting
                          ? Center(child: CircularProgressIndicator())
                          : ListView.builder(
                            itemBuilder: (_,i)=>ListTile(title: Text('abc'),),
                            itemCount: article.length,
                          )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
