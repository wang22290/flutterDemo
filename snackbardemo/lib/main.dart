import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ddddd",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home"),),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
              ),
              title: Text("Pages"),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.minimize),title: Text("minimize"))
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.red,
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          title: Text("1e3"),
          elevation: 50.0,
          leading: Builder(
            builder:(BuildContext context){
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search,color: Colors.white,size: 40,),
              tooltip: "alr It",
              onPressed: null,
            )
          ],
        ),
        body: ListView(
          
        ),
      ),
    );
  }
  
  void _onItemTapped(int index)(
setState ((){
  
}
)
  )
}

