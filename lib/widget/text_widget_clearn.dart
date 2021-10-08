

import 'package:flutter/material.dart';

class TextWidgetClearn extends StatelessWidget {
  const TextWidgetClearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      // Text(
      //   "有一天我 翻开旧旧的相簿上面写着 给最亲爱的宝物里面有我 穿幼稚园的制服还有一张 是我妈妈的笑容",
      //   maxLines: 1,//指定文本显示的最大行数
      //   textAlign: TextAlign.center,//用于设置文本在Text组件中的水平对齐方式
      //   overflow: TextOverflow.ellipsis,//超出范围的省略样式
      //   style:
      //   //文本样式
      //   TextStyle(
      //     color: Colors.blue,//设置文本显示的颜色
      //       fontSize:20.0,//字体大小
      //       height:5.0,//文本高度 表示将文本高度设置为字体大小的五倍
      //       letterSpacing: 4,//文字间隔
      //       fontWeight: FontWeight.bold,//指定文本的粗细
      //       fontStyle: FontStyle.italic,//文本样式 这里将文本设置为斜体
      //       decoration: TextDecoration.underline,//装饰文本,添加下划线
      //       decorationStyle: TextDecorationStyle.dashed//装饰类型,这里指定为虚线类型的下划线
      //   )
      // ),
      // Text.rich(TextSpan(
      //   text:"有一天我 翻开旧旧的相簿上面写着 给最亲爱的宝物里面有我 穿幼稚园的制服还有一张 是我妈妈的笑容",
      //   children:  [
      //     TextSpan(text:"缤纷的气球 在骊歌中飘散",style: TextStyle(fontSize: 30,color: Colors.blue)),
      //     TextSpan(text:"我们 就这样紧紧 牵起了勇敢",style:TextStyle(fontSize: 30,color:Colors.grey)),
      //   ]
      // ))
      RichText(
        text: TextSpan(text:"有一天我 翻开旧旧的相簿上面写着 给最亲爱的宝物里面有我 穿幼稚园的制服还有一张 是我妈妈的笑容",
        style: TextStyle(fontSize: 30,color: Colors.amber),
        children: [
          TextSpan(text:"缤纷的气球 在骊歌中飘散",style: TextStyle(fontSize: 30,color: Colors.blue)),
          TextSpan(text:"我们 就这样紧紧 牵起了勇敢",style:TextStyle(fontSize: 30,color:Colors.grey)),
        ])
      )
    );
  }
}
