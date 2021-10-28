import 'package:flutter/material.dart';
import 'package:south_to_north_learn/statemanager/inheritedwidget/mode_data.dart';
import 'package:south_to_north_learn/statemanager/inheritedwidget/state_container.dart';
class AddScreen extends StatefulWidget {
   AddScreen(Key? key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  static final GlobalKey<FormState>_formKey=GlobalKey<FormState>();
  String? _task;
  StateContainerState? container;

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    container=StateContainer.of(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('添加item项')
      ),
      body:Padding(
        padding:EdgeInsets.all(16.0),
        child:Form(
          key:_formKey,
          autovalidate:false,
          onWillPop:(){
            return Future(()=>true);
          },
          child:ListView(
            children: [
              TextFormField(
                initialValue: '',
                autofocus: true,
                style:Theme.of(context).textTheme.headline1,
                validator: (val){
                  return val!.trim().isEmpty?'输入有误！':null;
                },
                onSaved: (value)=>_task=value,
              )
            ],
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          if(_formKey.currentState!.validate()){
            _formKey.currentState!.save();
            container!.addItem(Item(_task!,));
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
