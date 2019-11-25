


import 'package:flutter/material.dart';

void main() {
  runApp(new myApp());
}


class myApp extends StatelessWidget {
  const myApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        // body: Image.asset("images/Snip20191119_6.png"),
        // body: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557781801455&di=17f9f2fc3ded4efb7214d2d8314e8426&imgtype=0&src=http%3A%2F%2Fimg2.mukewang.com%2F5b4c075b000198c216000586.jpg",
        // scale: 0.1,semanticLabel: "ddd",color: Colors.red,colorBlendMode:BlendMode.colorBurn,
        // fit: BoxFit.fill,alignment: Alignment.bottomRight,
        // matchTextDirection: false,filterQuality: FilterQuality.low,repeat: ImageRepeat.repeatY,),
        backgroundColor: Colors.red,
        // body: Icon(
        //   Icons.arrow_back,
        //   size:50.0,
        //   color:Colors.green,
        // ),
        body: TextField(
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          cursorColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          obscureText: true,
          cursorWidth: 10.0,
          cursorRadius: Radius.circular(5),
          enableInteractiveSelection: true,
          onTap: (){

          },

          onChanged: (String data){
            print(data);
          },
          onEditingComplete:(){
            print('onEditingComplete');
          },
          onSubmitted: (text){
            print(text);
          },
        ),
      ),
    );
  }
}

// class TextFieldWidget extends StatelessWidget {
//     final TextEditingController _controller = TextEditingController();


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ,
//     )
//   }
// }
