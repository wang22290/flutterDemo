import 'package:flutter/material.dart';

void main() {
  runApp(FormWidget());
}

class FormWidget extends StatefulWidget {
  FormWidget({Key key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _userGender = "男";
  String _userName;
  String _userPassword;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "form demo",
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter form"),
          backgroundColor: Colors.red,
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'yonghuming'),
                validator: (value){
                  if (value ?.length <= 5) {
                    return '用户名必须大于5 个字节';
                  }
                },
                onSaved: (value){
                  _userName = value;
                },
              ),
              RaisedButton(
                child: Image.network("https://user-gold-cdn.xitu.io/2018/6/19/16415dd87d332b56?imageslim",width: 20,height: 50,),
                onPressed: (){
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    print(_userName);
                  }
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}


