import 'package:flutter/material.dart';

class TextfielsWidgetClearn extends StatefulWidget {
  const TextfielsWidgetClearn({Key? key}) : super(key: key);

  @override
  _TextfielsWidgetClearnState createState() => _TextfielsWidgetClearnState();
}

class _TextfielsWidgetClearnState extends State<TextfielsWidgetClearn> {

  TextEditingController? _controller;
  String inputString="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=TextEditingController();
    _controller!.text="Flutter";
    _controller!.selection=TextSelection(
      baseOffset: 2,
      extentOffset: _controller!.text.length
    );
    _controller!.addListener(() {
      print("有没有触发");
      setState(() {
        inputString=_controller!.text.toString();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: TextField(
              controller: _controller,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.5),  // 边框颜色
                  ),
                ), //设置文本框边框样式
              prefixIcon: Icon(Icons.airplanemode_active),
                labelText: "请输入用户名"
              ),
              onChanged:(v){
                print(v);
              },
            ),
          ),
          Container(
            child: Text(inputString,style: TextStyle(fontSize: 10,color: Colors.red),),
          )
        ],
      ),
    );
  }
}
