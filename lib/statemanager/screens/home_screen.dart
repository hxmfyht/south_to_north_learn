import 'package:flutter/material.dart';
import '../widget/item_list.dart';
import '../inheritedwidget/state_container.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final container=StateContainer.of(context);
    final state=container.state;
    return Scaffold(
      appBar:AppBar(
        title:Text('InheritedWidget Sample'),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.add),
            onPressed: (){
                Navigator.of(context).pushNamed("/addItem");
              },
          )
        ]
      ),
      body:ItemList(),
    );
  }
}
