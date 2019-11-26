import 'package:flutter/material.dart';
import 'controllers/home_screen.dart';
import 'controllers/email_screen.dart';
import 'controllers/page_screen.dart';
import 'controllers/mine_screen.dart';

class bottomNavigationView extends StatefulWidget {
  bottomNavigationView({Key key}) : super(key: key);
  @override
  _bottomNavigationViewState createState() => _bottomNavigationViewState();
}



class _bottomNavigationViewState extends State<bottomNavigationView> {
  final _bottomNavigationColor = Colors.blue;
   int _currentIndex = 0;


  List<Widget> vcList = List();
  @override
  void initState() { 
    vcList
        ..add(HomeScreen())
        ..add(EmailScreen())
        ..add(PageScreen())
        ..add(MineScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: vcList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("home",style: TextStyle(color: _bottomNavigationColor,)),
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            )
          ),
           BottomNavigationBarItem(
            title: Text("email",style: TextStyle(color: _bottomNavigationColor,)),
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            )
          ),
           BottomNavigationBarItem(
            title: Text("pages",style: TextStyle(color: _bottomNavigationColor),),
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            )
          ),
           BottomNavigationBarItem(
            title: Text("mine",style: TextStyle(color: _bottomNavigationColor),),
            icon: Icon(
              Icons.person,
              color: _bottomNavigationColor,
            )
          ),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
             _currentIndex = index;
          });
        },
      ),

    );
  }
}