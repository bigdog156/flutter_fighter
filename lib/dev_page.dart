import 'package:Flutter_fighter/bloc/page.dart';
import 'package:flutter/material.dart';

class DevPage extends StatefulWidget {
  @override
  _DevPageState createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dev Mode"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Components'),
              Tab(text: 'Features'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TabComponents(),
            TabFeatures(),
          ],
        ),
      ),
    );
  }
}
// Tab Components
class TabComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocPage();
  }
}


//Tab Features
class TabFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello world !"),
    );
  }
}





