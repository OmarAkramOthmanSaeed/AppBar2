import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleAppBarPageState(),
    );
  }
}

class SimpleAppBarPageState extends StatefulWidget {
  @override
  State<SimpleAppBarPageState> createState() => _SimpleAppBarPageStateState();
}

class _SimpleAppBarPageStateState extends State<SimpleAppBarPageState> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),backgroundColor: Colors.green,
        titleSpacing: 0,
        //centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Under the modification');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white12, Colors.black45],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,

            ),          ),              ),        bottom: TabBar(
        indicatorColor: Colors.redAccent,
        indicatorWeight: 5,//isScrollable: true,
        tabs: [
          Tab(icon: Icon(Icons.home), text: 'Home',),
          Tab(icon: Icon(Icons.list_alt), text: 'Feed',),
          Tab(icon: Icon(Icons.person), text: 'Profile',),
          Tab(icon: Icon(Icons.settings), text: 'Settings',),
        ],
      ),
      ),      body: TabBarView(
      children: [
        buildPage('Home '),
        buildPage('Feed Page'),
        buildPage('Profile Page'),
        buildPage(' program Settings '),
      ],
    ),
    ),
  );
  Widget buildPage(String text) => Center(
      child: Text(text,
        style: TextStyle(fontSize: 35),
      )
  );
}