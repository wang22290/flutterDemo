import 'package:flutter/material.dart';

void main(){
  runApp(
    new ExpansionTileSample()
  );
}

class ExpansionTileSample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('ExpansionTileSample'),
        ),
        body: new ListView.builder(
            itemBuilder: (BuildContext context, int index) => new EntryItem(datakkkkkk[index]),
          itemCount: datakkkkkk.length,
        ),
      ),
    );
  }
}

class Entry{
  Entry(this.title,[this.children = const<Entry>[]]);
  final String title;
  final List<Entry> children;
}

final List<Entry> datakkkkkk = <Entry>[
  new Entry('ChapterA',
  <Entry>[
   new Entry('Section A0',
   <Entry>[
     new Entry('item A0.1'),
     new Entry('item A0.2'),
     new Entry('item A0.3'),
     new Entry('item A0.4'),
   ],
),
    new Entry('Section A1'),
    new Entry('Section A2'),
    new Entry('Section A3'),
  ],
  ),
  new Entry('Chapter B',
      [
        new Entry('Secton B0',
            [
              new Entry('item B0.1'),
              new Entry('item B0.2'),
              new Entry('item B0.3'),
              new Entry('item B0.4'),
        ],
        ),
       new Entry('Section B1'),
       new Entry('Section B2'),
       new Entry('Section B3'),
  ],
  ),
];

class EntryItem extends StatelessWidget{
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTitles(Entry root){
    if(root.children.isEmpty)
      return new ListTile(
        title: new Text(root.title),
      );
    return new ExpansionTile(
        title: new Text(root.title),
        key: new PageStorageKey(root),
        children: root.children.map(_buildTitles).toList(),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildTitles(entry);
  }
}