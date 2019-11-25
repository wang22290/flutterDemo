import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:core';
//import 'dart:mirrors';

enum Status{
  name,
  runing,
  stop,
  paused
}

void main() => runApp(MyApp());



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new MaterialApp(
      title: 'Starup Name Gengrator',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),

    );
  }

}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  @override
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator Bar'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
          new IconButton(icon: new Icon(Icons.add), onPressed: _pushSaved),
          new IconButton(icon: new Icon(Icons.create), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),

    );
  }

  void _pushSaved (){
    Navigator.of(context).push(
      new MaterialPageRoute(
          builder: (context){
            final titles= _saved.map(
                (pair){
                  return new ListTile(
                    title: new Text(
                      pair.asPascalCase,
                      style: _biggerFont,
                    ),
                  );
                },
            );

            final divided = ListTile.divideTiles(
                tiles: titles,context: context
            ).toList();
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('收藏的列表项目'),
              ),
              body: new ListView(
                children: divided
              ),
            );

      },
      ),
    );
}


  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context,i ){
        if(i.isOdd) return new Divider();
        final index = i ~/ 2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
        },
      );
  }

  Widget _buildRow(WordPair pair){
    //定义一个布尔变量，用于判断行控件ListTile是否被标记为收藏
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),

      //安装图标控件
      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
      color: alreadySaved ? Colors.red:null
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      },
    );
  }


}

