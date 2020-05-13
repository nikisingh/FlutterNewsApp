import 'package:flutter/material.dart';

import 'CategoryButton.dart';

class NewsPaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      children: <Widget>[
        NewsPaperButton(
          text: 'the-times-of-india',
          imageUrl: 'images/times_of_india_logo11.png',
        ),
        NewsPaperButton(
          text: 'the-hindu',
          imageUrl: 'images/hindu.png',
        ),
        NewsPaperButton(
          text: 'the-wall-street-journal',
          imageUrl: 'images/WSJ.png',
        ),
        NewsPaperButton(
          text: 'google-news-in',
          imageUrl: 'images/Google-news.png',
        ),
        NewsPaperButton(
          text: 'bbc-news',
          imageUrl: 'images/BBC.png',
        ),
        NewsPaperButton(
          text: 'business-insider-uk',
          imageUrl: 'images/BI_UK.png',
        ),
        NewsPaperButton(
          text: 'bloomberg',
          imageUrl: 'images/Bloomberg.png',
        ),
        NewsPaperButton(
          text: 'al-jazeera-english',
          imageUrl: 'images/ALJAzeera.png',
        ),
      ],
    );
  }
}
