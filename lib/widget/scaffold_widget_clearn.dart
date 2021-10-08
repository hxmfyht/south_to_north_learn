import 'package:flutter/material.dart';

class ScaffoldWidgetClearn extends StatelessWidget {
  const ScaffoldWidgetClearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //顶部菜单栏
      appBar:AppBar(
        title:Text('AppBar Title')
      ),
      //Scaffold中的主体布局
      body:Center(
        child: Text("You have pressed the button"),
      ),
        //主体部份背景颜色
      backgroundColor: Colors.green,
    );
  }
}
