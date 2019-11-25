import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main(){
  runApp(
    new MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
      home:FlutterDemo(),
    )
  );
}

class FlutterDemo extends StatefulWidget{
  FlutterDemo ({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlutterState();
  }
}

class _FlutterState extends State<FlutterDemo>{

  int _counter;

  Future<File> _getLocalFile() async{
    String dir = (await getApplicationDocumentsDirectory()).path;
    return new File('$dir/counter.txt');
  }

  Future<int> _readCounter() async{
   try{
     File file = await _getLocalFile();
     String contents = await file.readAsString();
     return int.parse(contents);
   } on FileSystemException{
     return 0;
   }
  }

  Future<Null> _incrementCounter() async{
    setState(() {
      _counter++;
    });
    await (await _getLocalFile()).writeAsString('$_counter');
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _readCounter().then((int value){
          setState(() {
            _counter = value;
          });
        });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: ,
    );
  }
}