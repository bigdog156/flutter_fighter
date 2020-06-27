import 'dart:async';
import 'package:Flutter_fighter/bloc/base_bloc.dart';

class BlocCounter extends BlocBase{
  int counter;
  //Handler counter in stream
  StreamController<int> controller = StreamController<int>();
  StreamSink<int> get addInt => controller.sink;
  Stream<int> get outInt => controller.stream;
//
  BlocCounter(){
    counter = 0;
  }
  void increament(){
    counter ++;
    addInt.add(counter);
  }
  void decreament(){
    counter --;
    addInt.add(counter);
  }
  void dispose(){
    controller.close();
  }
}