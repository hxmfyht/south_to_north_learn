import 'package:flutter/material.dart';

import 'inherited_state_container.dart';
import 'mode_data.dart';

class StateContainer extends StatefulWidget {
  final AppState? state;
  final Widget child;
  StateContainer({
    required this.child,
    this.state
});

  @override
  StateContainerState createState() => StateContainerState();

  static StateContainerState of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<InheritedStateContainer>()!.data;
  }
}

class StateContainerState extends State<StateContainer> {
  AppState? state;

  @override
  void initState() {
    // TODO: implement initState
    if(widget.state!=null){
      state=widget.state;
    }else{
      state=AppState();
    }
    super.initState();
  }

  void addItem(Item item){
    setState(() {
      state!.items.add(item);
    });
  }

  void removeItem(Item item){
    setState(() {
      state!.items.remove(item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return InheritedStateContainer(
      data:this,
      child:widget.child
    );
  }
}
