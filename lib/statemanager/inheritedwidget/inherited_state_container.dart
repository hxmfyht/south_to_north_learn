import 'package:flutter/material.dart';
import 'state_container.dart';

class InheritedStateContainer extends InheritedWidget{
  final StateContainerState data;
  InheritedStateContainer({
    Key? key,
    required this.data,
    required Widget child,
}):super(key:key,child:child);
  @override
  bool updateShouldNotify(InheritedStateContainer old)=>true;
}