import 'package:flutter/material.dart';
import 'bottomNavigationView.dart';

void main() {
  runApp(bottomNavigationDemo());
}

class bottomNavigationDemo extends StatelessWidget {
  const bottomNavigationDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"dddddd",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
              appBar: AppBar(
              title: Text("Bootom"),
              // backgroundColor: ,
            ),
            bottomNavigationBar: bottomNavigationView(),
        ),
    );
  }
}

//  Scaffold(
//         appBar: AppBar(
//           title: Text("Bootom"),
//           // backgroundColor: ,
//         ),
//         bottomNavigationBar: bottomNavigationView(),
//         body: Center(
//           child: Text("ldafjkads;f"),
//         ),
//       ),

// class bottomNavigationDemoWidget extends StatefulWidget {
//   bottomNavigationDemoWidget({Key key}) : super(key: key);

//   @override
//   _bottomNavigationDemoWidgetState createState() => _bottomNavigationDemoWidgetState();
// }

// class _bottomNavigationDemoWidgetState extends State<bottomNavigationDemoWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text("bottomNavigation"),
//       ),
//     );
//   }
// }