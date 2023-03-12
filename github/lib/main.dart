import 'package:flutter/material.dart';

void main() {
  runApp( MyTabbedPage());
}

class MyTabbedPage extends StatefulWidget {
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tabbed Page"),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(text: "Tab 1"),
              Tab(text: "Tab 2"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Center(
                child: Text("Page 1"),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text("Page 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

