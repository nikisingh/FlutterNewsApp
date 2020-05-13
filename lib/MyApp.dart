import 'package:flutter/material.dart';
import 'package:newsapp/NewsPaper.dart';

import 'Categories.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [NewsPaper(), Categories()],
    );
  }
}
