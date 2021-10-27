import 'package:flutter/material.dart';

class _InheritedStateContainer extends InheritedWidget{
  final StateContainerState data;
  _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
}):super(key：key,child：child);
  @override
  bool updateShouldNotify(_InheritedStateContainer old)=>true;
}