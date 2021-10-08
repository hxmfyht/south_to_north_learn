import 'package:flutter/material.dart';

class IconWidgetClearn extends StatelessWidget {
  const IconWidgetClearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.favorite,
        color:Colors.red,
        size: 24.0,
      ),
    );
  }
}
