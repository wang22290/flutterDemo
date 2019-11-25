import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.network("https://review.chinabrands.cn/chinabrands_cn/seo/image/20190218/%E8%B0%B7%E6%AD%8C%20-%20%E5%9B%BE%E7%89%87%E6%90%9C%E7%B4%A2%E5%BC%95%E6%93%8E.jpg",width: 50,height: 50,),
                      
                    ),
                  ),
                  Text("djdjdj",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text("add account"),
                  ),
                   ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("设置"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}