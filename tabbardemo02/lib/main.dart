import 'dart:math';

import 'package:flutter/material.dart';
import 'MyDrawer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: Text("tabbar");
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("helloworld"),
          leading: Builder(builder: (context){
            return IconButton(
              icon: Icon(Icons.dashboard,color:Colors.white),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print("查找内容");
              },
            )
          ],
          bottom: TabBar(
            controller: _,
          ),
        ),
        drawer: new MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("home")),
            BottomNavigationBarItem(icon: Icon(Icons.business),title: Text("business")),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("minimize")),
          ],
        ),
        body: TabBarView(
          // controller: _tab,
        )
      )
    );
  }
}

class _ScaffoldRouteState extends State<ScaffoldRoute> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ["新闻","历史","图片"];
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: tabs.length,vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            tabs.map((e) => Tab(text: e)
            ).toList(),
          ],
        ),
      ),
    );
  }
}