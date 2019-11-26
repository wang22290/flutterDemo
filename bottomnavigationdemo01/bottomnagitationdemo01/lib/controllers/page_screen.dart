import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageScreen"),
      ),
      body: Center(
        child: Text("PageScreen-111"),
      ),
    );
  }
}