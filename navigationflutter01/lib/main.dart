import 'package:flutter/material.dart';
import 'Product.dart';
import 'ProductsListView.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "navigationBar",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ProductsList(
        products: List.generate(20, (i)=>Product('商品 $i','这是一个商品详情，编号为：$i')
        ),
      )
    );
  }
}


