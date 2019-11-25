import 'package:flutter/material.dart';
import 'package:navigationflutter01/SecondScreen.dart';
import 'Product.dart';

class ProductsList extends StatelessWidget {
  final List<Product> products;
  const ProductsList({Key key,@required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => new SecondScreen(product: products[index])
              )
              );
            },
          );
        },
      ),
    );
  }
}


// class ProductList extends StatelessWidget {
//   final List<Product> products;
//   ProductList({Key key,@required this.products}):super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("商品列表"),),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context,index){
//           return ListTile(
//             title: Text(products[index].title),
//             onTap: (){
//               Navigator.push(context, new MaterialPageRoute(
//                 builder: (context) => new SecondScreen()
//               ));
//             },
//           );
//         },
//       ),
//     );
//   }
// }