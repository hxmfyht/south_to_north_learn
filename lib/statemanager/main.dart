import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

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


