import 'package:flutter/material.dart';
import 'bloc_provider.dart';
class BlocPage extends StatefulWidget {
  @override
  _BlocPageState createState() => _BlocPageState();
}
extension on Bloc{
  int oneHunter(){
    int sum = 99 + this.score;
    return sum;
  }
}

class _BlocPageState extends State<BlocPage> {
  Bloc _bloc = Bloc(1,1);
  int counter;
  int _counter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter = 0;
    _counter = _bloc.oneHunter();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(counter.toString(), style: TextStyle(fontSize: 40),),
          Text(_counter.toString(), style: TextStyle(fontSize: 20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: (){},
                child: Text('Increase'),
              ),
              RaisedButton(
                onPressed: (){},
                child: Text('Decrease'),
              )
            ],
          )
        ],
      ),
    );
  }
}
