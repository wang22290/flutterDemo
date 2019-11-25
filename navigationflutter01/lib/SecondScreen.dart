import 'package:flutter/material.dart';
import 'package:navigationflutter01/Product.dart';
import 'Product.dart';

class SecondScreen extends StatelessWidget {
  final Product product;
  const SecondScreen({Key key ,@required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("接受数据"),
      ),
      body: Center(
        child: RaisedButton(
          child: Image.asset("images/Snip20191122_18.png",width: 100,height: 100,),
          onPressed: (){
            Navigator.pop(context,'1731039201');
          },
        ),
      ),
    );
  }
}