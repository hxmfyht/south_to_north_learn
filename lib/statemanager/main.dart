import 'package:flutter/material.dart';

import './screens/add_screen.dart';
import './screens/home_screen.dart';
import './inheritedwidget/mode_data.dart';
import './inheritedwidget/state_container.dart';

// void main()=>runApp(MyApp());
void main()=>runApp(
  StateContainer(state: AppState(),child:HomeApp())
);

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Inherited Widget Demo',
      routes: {
        '/':(context)=>HomeScreen(),
        '/addItem':(context)=>AddScreen(),
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'状态管理',
      home: MyStateManagerClearn(),
      theme:ThemeData(
      primarySwatch: Colors.blue,
    ),
    );
  }
}

class MyStateManagerClearn extends StatelessWidget {
  const MyStateManagerClearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("状态管理"),
      ),
      body: Container(
      ),
    );
  }
}


