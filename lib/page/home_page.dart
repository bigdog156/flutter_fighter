import 'package:Flutter_fighter/bloc/base_bloc.dart';
import 'package:Flutter_fighter/page/bloc_counter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final BlocCounter _blocCounter = BlocProvider.of<BlocCounter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Kid Learn"),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _blocCounter.outInt,
          initialData: _blocCounter.counter,
          builder: (BuildContext context, snapshot) {
            return Text(
              snapshot.data.toString(),
              style: TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          OutlineButton(
            onPressed: () {
              _blocCounter.decreament();
            },
            child: Icon(Icons.arrow_downward),
          ),
          OutlineButton(
            onPressed: () {
              _blocCounter.increament();
            },
            child: Icon(Icons.arrow_upward),
          )
        ],
      ),
    );
  }
}
