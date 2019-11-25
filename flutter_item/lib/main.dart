import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main(){
  runApp(
    new AnimatedListSample()
  );
}

class AnimatedListSample extends StatefulWidget{
  @override
  _AnimatedListSampleState createState() => new _AnimatedListSampleState();
}

class _AnimatedListSampleState extends State<AnimatedListSample>{
  final GlobalKey<AnimatedListState> _listkey = new GlobalKey<AnimatedListState>();
  ListModel<int> _list;
  int _selectedItem;
  int _nextItem;

  @override
  void initState() {
    super.initState();
    _list = new ListModel<int>(
       listkey:_listkey,
       initialItems: <int>[],
       removedItemBuilder: _buildRemovedItem,
    );
    _nextItem = 0;
  }

  Widget _buildItem (BuildContext context,int index,Animation<double> animation){
    return new CardItem(
        animation: animation,
        item: _list[index],
        selected: _selectedItem == _list[index],
        onTap: (){
            setState(() {
            _selectedItem = _selectedItem == _list[index] ? null : _list[index];
          });
        },
    );
  }

  Widget _buildRemovedItem(int item,BuildContext context,Animation<double> animation){
    return new CardItem(
        animation: animation,
        item: item,
        selected: false,
    );
  }

  void _insert(){
    final int index = _selectedItem == null ? _list.length :_list.indexof(_selectedItem);
    _list.insert(index, _nextItem++);
  }

  void _remove(){
    if(_selectedItem != null ){
      _list.removeAt(_list.indexof(_selectedItem));
      setState(() {
        _selectedItem = null;
      });
    }
  }
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('AnimationList'),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.add_circle),
                onPressed: _insert,
                tooltip: 'insert a new item',
            ),
            new IconButton(
                icon: new Icon(Icons.remove_circle),
                onPressed: _remove,
                tooltip: 'remove a item',
            )
          ],
        ),
        body: new Padding(
            padding: const EdgeInsets.all(6.0),
            child: new AnimatedList(
                key: _listkey,
                initialItemCount: _list.length,
                itemBuilder: _buildItem,
            ),
        ),
      ),
    );
  }

}

class ListModel<E>{
  ListModel({
    @required this.listkey,
    @required this.removedItemBuilder,
    Iterable<E> initialItems,
  }) :  assert(listkey != null),
        assert(removedItemBuilder != null),
        _items = new List<E>.from(initialItems ?? <E>[]);

    final GlobalKey<AnimatedListState> listkey;
    final dynamic removedItemBuilder;
    final List<E> _items;

    AnimatedListState get _animatedList => listkey.currentState;

    void insert (int index ,E item){
      _items.insert(index, item);
      _animatedList.insertItem(index);
    }

    E removeAt(int index){
      final E removedItem = _items.removeAt(index);
      if (removedItem != null){
        _animatedList.removeItem(index, (BuildContext context,Animation<double> animation){
          return removedItemBuilder(removedItem,context,animation);
        });
      }
      return removedItem;
    }
    int get length => _items.length;
    E operator[](int index) => _items[index];
    int indexof (E item) => _items.indexOf(item);

}

class CardItem extends StatelessWidget{

  const CardItem({
    Key key,
    @required this.animation,
    this.onTap,
    @required this.item,
    this.selected : false
  }):assert(animation != null),
     assert(item != null && item >= 0),
     assert(selected != null),
     super(key:key);

  final Animation<double> animation;
  final VoidCallback onTap;
  final int item;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if(selected)
//    {
      textStyle = textStyle.copyWith(color: Colors.yellow[400]);
      return new Padding(
        padding:const EdgeInsets.all(2.0),
        child: new SizeTransition(
            axis: Axis.vertical,
            sizeFactor: animation,
           child: new GestureDetector(
             behavior: HitTestBehavior.opaque,
             onTap: onTap,
             child: new SizedBox(
               height: 128.0,
               child: new Card(
                 color: Colors.primaries[item % Colors.primaries.length],
                 child: new Center(
                   child: new Text('Item $item',style: textStyle,),
                 ),
               ),
             ),
           ),
        ),
      );
//    }
  }
}


