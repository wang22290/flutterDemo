import 'package:flutter/material.dart';
import 'controllers/home_screen.dart';
import 'controllers/email_screen.dart';
import 'controllers/page_screen.dart';
import 'controllers/mine_screen.dart';
import 'controllers/eachView.dart';

class bottomNavigationView extends StatefulWidget {
  bottomNavigationView({Key key}) : super(key: key);

  @override
  _bottomNavigationViewState createState() => _bottomNavigationViewState();
}

class _bottomNavigationViewState extends State<bottomNavigationView> {
  List<Widget> _eachView;
  int _index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _eachView = List();
    _eachView
        ..add(EachView('HomeScreen'))
        ..add(EachView('MineScreen'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Tina用户");
        },
        tooltip: "add user",
        child: Icon(
          Icons.add,
          color:Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child:Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home
              ),
              color: Colors.white,
              onPressed: (){
                _index = 0;
              },
            ),
             IconButton(
              icon: Icon(
                Icons.email
              ),
              color: Colors.white,
              onPressed: (){
                 _index = 1;
              },
            ),
          ],
        )
      ),
      
    );
  }
}









//-----------------------------------------------规则底部导航栏-----------------------------------------
// class bottomNavigationView extends StatefulWidget {
//   bottomNavigationView({Key key}) : super(key: key);
//   @override
//   _bottomNavigationViewState createState() => _bottomNavigationViewState();
// }



// class _bottomNavigationViewState extends State<bottomNavigationView> {
//   final _bottomNavigationColor = Colors.blue;
//    int _currentIndex = 0;


//   List<Widget> vcList = List();
//   @override
//   void initState() { 
//     vcList
//         ..add(HomeScreen())
//         ..add(EmailScreen())
//         ..add(PageScreen())
//         ..add(MineScreen());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: vcList[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             title: Text("home",style: TextStyle(color: _bottomNavigationColor,)),
//             icon: Icon(
//               Icons.home,
//               color: _bottomNavigationColor,
//             )
//           ),
//            BottomNavigationBarItem(
//             title: Text("email",style: TextStyle(color: _bottomNavigationColor,)),
//             icon: Icon(
//               Icons.email,
//               color: _bottomNavigationColor,
//             )
//           ),
//            BottomNavigationBarItem(
//             title: Text("pages",style: TextStyle(color: _bottomNavigationColor),),
//             icon: Icon(
//               Icons.pages,
//               color: _bottomNavigationColor,
//             )
//           ),
//            BottomNavigationBarItem(
//             title: Text("mine",style: TextStyle(color: _bottomNavigationColor),),
//             icon: Icon(
//               Icons.person,
//               color: _bottomNavigationColor,
//             )
//           ),
//         ],
//         currentIndex: _currentIndex,
//         type: BottomNavigationBarType.fixed,
//         onTap: (int index){
//           setState(() {
//              _currentIndex = index;
//           });
//         },
//       ),

//     );
//   }
// }