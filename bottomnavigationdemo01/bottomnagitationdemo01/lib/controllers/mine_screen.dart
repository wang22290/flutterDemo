import 'package:flutter/material.dart';

class MineScreen extends StatelessWidget {
  const MineScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MineScreen"),
      ),
      body: Center(
        child: Text("MineScreen-111"),
      ),
    );
  }
}