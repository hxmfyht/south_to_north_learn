import 'package:flutter/material.dart';

class ScaffoldAppbarWidgetClearn extends StatefulWidget {
  const ScaffoldAppbarWidgetClearn({Key? key}) : super(key: key);

  @override
  _ScaffoldAppbarWidgetClearnState createState() => _ScaffoldAppbarWidgetClearnState();
}

class _ScaffoldAppbarWidgetClearnState extends State<ScaffoldAppbarWidgetClearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      leading: Icon(Icons.home),//导航图标
        title: Text("AppBar Title"),//页面标题
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.build)
          ),
          IconButton(
          onPressed: (){},
          icon: Icon(Icons.add),
          )
        ],
      ),
      body:Container()
    );
  }
}
