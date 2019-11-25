import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


void main(){
  runApp(
    new MaterialApp(
      title: 'pop',
      home: new FirstScreen(
        todos: new List.generate(
            20,
            (i) => new Todo(
            'Todo $i',
              'A description of what needs to be don fot Todo $i',
            ),
        ),
      ),
    )
  );
}

class Todo{
  final String title;
  final String description;

  Todo(this.title,this.description);
}



class FirstScreen extends StatelessWidget{
  final List<Todo> todos;

  FirstScreen({Key key,@required this.todos}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('pop first Screen'),
      ),
//      body: new Center(
//        child: new RaisedButton(
//            onPressed: (){
//              Navigator.push(
//                context,
//                new MaterialPageRoute(builder: (context) => new SecondScreen()),
//              );
//            },
//          child: new Text('push'),
//        ),
//      ),
    body: new ListView.builder(
      itemCount: todos.length,
        itemBuilder: (context,index){
        return new ListTile(
          title: new Text(
            todos[index].title,
          ),
          onTap: (){
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SecondScreen(todo: todos[index])
                ),
            );
          },
        );

        }

    ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  final Todo todo;
  SecondScreen ({Key key,@required this.todo}):super(key:key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('second Screen'),
      ),
//      body: new Center(
//        child: new RaisedButton(
//            onPressed: (){
//              Navigator.pop(context);
//            },
//            child: new Text('Go back'),
//
//        ),
//      ),
      body: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text('${todo.description}'),
      ),
    );
  }
}


//void main(){
//  runApp(
//    new MaterialApp(
//      title: 'ShoppingApp',
//      theme: new ThemeData(
//        brightness: Brightness.light,
//        primaryColor: Colors.red[800],
//        accentColor: Colors.yellow[700],
//      ),
////      home: new ShoppingList(
////        products: <Product>[
////          new Product(name:'eggs'),
////          new Product(name:'apple'),
////          new Product(name:'pick'),
////        ],
////
////      ),
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('ttleee'),
//        ),
////        body: new Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566907488998&di=3550cd9bdd50a936f2a34720ace4dc33&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201502%2F18%2F20150218090040_uKSaN.jpeg')
////        body: new Stack(
////          children: <Widget>[
////            new Center(
////              child: new CircularProgressIndicator(),
////            ),
////            new Center(
////              child: new FadeInImage.memoryNetwork(
////                  placeholder: kTransparentImage,
////                  image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566907488998&di=3550cd9bdd50a936f2a34720ace4dc33&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201502%2F18%2F20150218090040_uKSaN.jpeg'
////              ),
////            )
////          ],
////        ),
//      body: new ListView(
//        children: <Widget>[
//          new ListTile(
//            leading: new Icon(Icons.map),
//            title: new Text('map'),
//          ),
//          new ListTile(
//            leading: new Icon(Icons.phone),
//            title: new Text('album'),
//          ),
//        ],
//      ),
//      ),
//
//    )
//  );
//}
//
//class ShoppingList extends StatefulWidget{
//  ShoppingList ({Key key ,this.products}) :super(key: key);
//  final List<Product> products;
//
//  @override
//  _ShoppingListState createState() => new _ShoppingListState();
//}
//
//class _ShoppingListState extends State<ShoppingList>{
//  Set<Product> _shoppingCar = new Set<Product>();
////  Set<Product> _shoppingCar = new Set<Product>();
//  void _handleCarChange(Product product,bool inCart){
//    setState(() {
//      if(inCart){
//        _shoppingCar.add(product);
//      }else{
//        _shoppingCar.remove(product);
//      }
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Shopping List'),
//      ),
//      body: new ListView(
//        padding: new EdgeInsets.symmetric(vertical: 8.0),
//        children: widget.products.map((Product product){
//         return new ShoppingListItem(
//           product:product,
//           inCart:_shoppingCar.contains(product),
//           onCartChanged:_handleCarChange,
//         );
//
//      }).toList(),
//      ),
//    );
//  }
//
//}
//
//
//
//class Product{
//  const Product ({this.name});
//  final String name;
//}
//
//
//typedef void CartChangedCallBack(Product product,bool inCart);
//
//class ShoppingListItem extends StatelessWidget{
//  ShoppingListItem({Product product,this.inCart,this.onCartChanged}):product = product, super(key:new ObjectKey(product));
//
//  final Product product;
//  final bool inCart;
//  final CartChangedCallBack onCartChanged;
//
//  Color _getColor(BuildContext context){
//    return inCart ?Colors.black54:Theme.of(context).primaryColor;
//  }
//
//  TextStyle _getTextStyle(BuildContext context){
//    if(!inCart)return null;
//
//    return new TextStyle(
//      color: Colors.black54,
//      decoration: TextDecoration.lineThrough,
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new ListTile(
//      onTap: (){
//        onCartChanged(product,!inCart);
//      },
//      leading: new CircleAvatar(
//        backgroundColor: _getColor(context),
//        child: new Text(product.name[0]),
//      ),
//      title: new Text(product.name,style: _getTextStyle(context),),
//    );
//  }
//}
//









































//---------------------------------------------------------------------------------------------
//void main(){
//  runApp(
//    new MaterialApp(
//      title: 'ShopinStore',
//      home: new TutorialHome(),
//    )
//  );
//}
//
//class TutorialHome extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: new AppBar(
//        leading: new IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigation Menu',
//            color: Colors.red,
//
//            onPressed: null,
//        ),
//        title: new Text(
//            'Example title',
////            textAlign: TextAlign.,
//        ),
//
//        backgroundColor: Colors.red,
//        actions: <Widget>[
//          new IconButton(
//              icon: Icon(Icons.search),
//              tooltip: 'Search',
//              onPressed: null,
//          ),
//        ],
//      ),
////      body: new Center(
////        child: new Text('jdjjd'),
////      ),
////      body: new MyButton(),
//    body: new MyButton(),
//      floatingActionButton: new FloatingActionButton(
//        tooltip: 'Add',
//        child: new Icon(Icons.add),
//        backgroundColor: Colors.yellow,
//        onPressed: null,
//      ),
//
//    );
//  }
//}
//
//class MyButton extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new GestureDetector(
//      onTap: (){
//        print('mybutton was Tapped!');
//      },
//      child: new Container(
//        height: 36.0,
//        padding: const EdgeInsets.all(8.0),
//        margin: const EdgeInsets.symmetric(horizontal: 9.0),
//        decoration: new BoxDecoration(
//          borderRadius:  new BorderRadius.circular(5.0),
//          color: Colors.lightBlueAccent[600],
//        ),
//        child: new Center(
//          child: new Text('33333'),
//        ),
//      ),
//    );
//  }
//}
//
//
//class Counter extends StatefulWidget{
//  @override
//  _CountState createState() => new _CountState();
//}
//
//class _CountState extends State<Counter>{
//  int _counter = 0;
//  void _increment(){
//    setState(() {
//      _counter ++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Row(
//      children: <Widget>[
//        new RaisedButton(
//            onPressed: _increment,
//            child: new Text('INcreament'),
//        ),
//        new Text('Count :$_counter'),
//      ],
//    );
//  }
//}
//
//































//void main(){
//  runApp(
//    new MaterialApp(
//     title: 'Shoping',
//     home: new MyScaffold(),
//    )
//  );
//}
//
//class MyScaffold extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//   return new Material(
//     child: new Column(
//       children: <Widget>[
//         new MyAppBar(
//           title:new Text(
//             'Example App',
//             style: Theme.of(context).primaryTextTheme.title,
//           ),
//         ),
//         new Expanded(
//             child:new Center(
//               child: new Text('Hellow world'),
//             ),
//         )
//
//         ),
//       ],
//     ),
//   );
//  }
//}
//
//class MyAppBar extends StatelessWidget{
//  MyAppBar({this.title});
//
//  final Widget title;
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//       return new Container(
//         height: 100.0,
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         decoration: new BoxDecoration(color: Colors.blue[500]),
//         child: new Row(
//           children: <Widget>[
//             new IconButton(
//                 icon: new Icon(Icons.menu),
//                 tooltip: 'Navigation Menu',
//                 onPressed: null,
//             ),
//             new Expanded(
//                 child: title,
//             ),
//             new IconButton(
//                 icon: new Icon(Icons.search),
//                 tooltip: 'Search',
//                 onPressed: null,
//             ),
//           ],
//         ),
//       );
//  }
//}
