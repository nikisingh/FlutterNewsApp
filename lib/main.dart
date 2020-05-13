import 'package:flutter/material.dart';

import 'MyApp.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                indicatorColor: Colors.green,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                      child:
                          Text('News Paper', style: TextStyle(fontSize: 18))),
                  Tab(child: Text('Categories', style: TextStyle(fontSize: 18)))
                ],
              ),
              backgroundColor: Colors.brown,
              centerTitle: true,
              title: Text(
                'Flutter News App',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            body: MyApp()),
      ),
    ),
  );
}
