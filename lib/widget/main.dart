import 'package:flutter/material.dart';
import 'textfiels_widget_clearn.dart';
import 'scaffold_widget_clearn.dart';

import 'icon_widget_clearn.dart';
import 'text_widget_clearn.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"widget",
      home:MyWidgetClearn()
    );
  }
}

class MyWidgetClearn extends StatelessWidget {
  const MyWidgetClearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // TextWidgetClearn(),
      // IconWidgetClearn(),
      // TextfielsWidgetClearn()
      ScaffoldWidgetClearn()
    );
  }
}

