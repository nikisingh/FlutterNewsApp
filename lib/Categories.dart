import 'package:flutter/material.dart';

import 'CategoryButton.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      mainAxisSpacing: 5,
      children: <Widget>[
        NewsPaperButton(
          text: 'business',
          imageUrl: 'images/Business.png',
        ),
        NewsPaperButton(
          text: 'entertainment',
          imageUrl: 'images/Entertainment.png',
        ),
        NewsPaperButton(
          text: 'technology',
          imageUrl: 'images/technology.png',
        ),
        NewsPaperButton(
          text: 'health',
          imageUrl: 'images/health.png',
        ),
        NewsPaperButton(
          text: 'science',
          imageUrl: 'images/science.png',
        ),
        NewsPaperButton(
          text: 'sports',
          imageUrl: 'images/sport.png',
        ),
      ],
    );
  }
}
