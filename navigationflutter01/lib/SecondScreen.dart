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
          child: Text("${product.description}"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}