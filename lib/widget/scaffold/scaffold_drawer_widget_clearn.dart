import 'package:flutter/material.dart';

class ScaffoldDrawerWidgetClearn extends StatefulWidget {
  const ScaffoldDrawerWidgetClearn({Key? key}) : super(key: key);

  @override
  _ScaffoldDrawerWidgetClearnState createState() => _ScaffoldDrawerWidgetClearnState();
}

class _ScaffoldDrawerWidgetClearnState extends State<ScaffoldDrawerWidgetClearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title:Text("DrawerDemo"),
      ),
      drawer: MyDrawer(),
        onDrawerChanged:(bool aa){
        print(aa);
        }
       // endDrawer:MyDrawer()
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child:Text(
            '菜单头部',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 24
                )
          ),
            decoration: BoxDecoration(
              color:Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("消息"),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("我的"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("设置"),
          ),
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Text("ajkajk")
          )
        ],
      )
    );
  }
}
