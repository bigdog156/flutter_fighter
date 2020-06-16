import 'package:flutter/material.dart';
enum event {
  increase,
  decrease
}
class BlocBase{

}

class Bloc{
  int _score;
  int score;
  Bloc(this._score, this.score);

  String talk(){
    print(_score);
    return _score.toString();
  }
}