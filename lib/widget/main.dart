import 'package:flutter/material.dart';
import 'package:south_to_north_learn/widget/scaffold/scaffold_drawer_widget_clearn.dart';

import 'scaffold/scaffold_widget_clearn2.dart';
import 'scaffold/scaffold_widget_clearn.dart';
import 'scaffold/scaffold_appbar_widget_clearn.dart';
import 'scaffold/scaffold_appbar_widget_clearn2.dart';


import 'textfiels_widget_clearn.dart';
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
      home:MyWidgetClearn(),
      theme:ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
        ),
      title:"widget",

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
      // ScaffoldWidgetClearn()
      // ScaffoldWidget2Clearn()
      // ScaffoldAppbarWidgetClearn()
      // ScaffoldAppbarWidgetClearn2()
      ScaffoldDrawerWidgetClearn()
    );
  }
}

