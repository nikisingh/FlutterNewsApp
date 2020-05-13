import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsListTile extends StatefulWidget {
  final List<Map> newsData;
  NewsListTile(this.newsData);

  @override
  _NewsListTileState createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
//  launchURL(text) {
//    launch(text);
//  }

  final flutterWebViewPlugin = FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    //print(widget.newsData);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          'Flutter News App',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.newsData.length,
        itemBuilder: (BuildContext context, int i) {
          return GestureDetector(
            onTap: () {
              //launchURL(widget.newsData[i]['url']);
              Navigator.push<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => Scaffold(
                    appBar: AppBar(
                        backgroundColor: Colors.brown,
                        centerTitle: true,
                        title: Text('Flutter News App',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black))),
                    body: WebView(
                      initialUrl: widget.newsData[i]['url'],
                      javascriptMode: JavascriptMode.unrestricted,
                    ),
                  ),
                ),
              );
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 100.0,
                      height: 300.0,
                      child: Image.network(
                        widget.newsData[i]['urlToImage'] != null
                            ? widget.newsData[i]['urlToImage']
                            : '',
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(
                      widget.newsData[i]['title'] != null
                          ? widget.newsData[i]['title']
                          : '',
                      // style: kCardTextStyle,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.newsData[i]['publishedAt'] != null
                              ? widget.newsData[i]['publishedAt']
                              : '',

                          //  style: kCardSubTextStyle,
                        ),
                        Divider(
                          color: Colors.brown,
                        ),
                        Text(
                          widget.newsData[i]['description'] != null
                              ? widget.newsData[i]['description']
                              : '',
                          // style: kCardSubtitleTextStyle,
                        ),
                      ],
                    ),
                    isThreeLine: true,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//WebviewScaffold(
//withZoom: true,
//withLocalStorage: true,
//url: widget.newsData[i]['url'],
//appBar: AppBar(
//backgroundColor: Colors.brown,
//centerTitle: true,
//title: Text(
//'Flutter News App',
//style: TextStyle(fontSize: 20, color: Colors.black),
//),
//),
//),
