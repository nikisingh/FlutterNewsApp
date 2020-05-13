import 'package:flutter/material.dart';
import 'package:newsapp/NewsListTile.dart';

import 'Networking.dart';

class NewsPaperButton extends StatelessWidget {
  final String text;
  final String imageUrl;
  NewsPaperButton({this.text, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Networking networking = Networking();

    void getNewsData() async {
      var appData = await networking.getData(text);

      if (appData != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => NewsListTile(
              appData,
            ),
          ),
        );
      } else {}
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
          onPressed: () {
            getNewsData();
          },
          child: Container(
            child: Column(
              children: <Widget>[
                Visibility(
                  child: Text(text),
                  visible: false,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
