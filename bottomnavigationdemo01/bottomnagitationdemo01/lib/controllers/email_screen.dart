import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EmailScreen"),
      ),
      body: Center(
        child: Text("EmailScreen-111"),
      ),
    );
  }
}