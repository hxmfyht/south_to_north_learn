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
        //底部导航栏
      bottomNavigationBar:BottomAppBar(
        color:Colors.grey,
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: [
            Expanded(child: Container(
              color:Colors.red,
              height: 50.0,
            )),
            Expanded(child: Container(
              color:Colors.blue,
              height:50.0,
            )),
            Expanded(child: Container(
              color:Colors.grey,
              height:50.0,
            )),
            Expanded(child: Container(
              color:Colors.amberAccent,
              height:50.0,
            ))
          ],
        )
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        tooltip: "increment Counter",
        child:Icon(Icons.add),
      ),
        //指定悬浮按钮的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}
