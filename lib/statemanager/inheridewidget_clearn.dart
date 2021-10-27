import 'package:flutter/material.dart';

class StateContainer extends StatefulWidget {
  final AppState state;
  final Widget child;
  StateContainer({
    @required this.child,
    this.state
});

  @override
  _StateContainerState createState() => _StateContainerState();
}

class _StateContainerState extends State<StateContainer> {
  AppState state;

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
  @override
  Widget build(BuildContext context) {
    return _inherited
  }
}
