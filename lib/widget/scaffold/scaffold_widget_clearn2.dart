import 'package:flutter/material.dart';

class ScaffoldWidgetClearn2 extends StatefulWidget {

  @override
  _ScaffoldWidgetClearn2State createState() => _ScaffoldWidgetClearn2State();
}

class _ScaffoldWidgetClearn2State extends State<ScaffoldWidgetClearn2> {
  int _selectedIndex=0;

  void _onitemTapped(int index){
    setState((){
      _selectedIndex=index;
    });
  }

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
      bottomNavigationBar:BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted),label:"List"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "me"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "me1")
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap:_onitemTapped,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
      )
    );
  }
}
