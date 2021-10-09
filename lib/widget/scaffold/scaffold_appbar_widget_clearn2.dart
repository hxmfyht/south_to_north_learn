import 'package:flutter/material.dart';

class ScaffoldAppbarWidgetClearn2 extends StatefulWidget {
  const ScaffoldAppbarWidgetClearn2({Key? key}) : super(key: key);

  @override
  _ScaffoldAppbarWidgetClearn2State createState() => _ScaffoldAppbarWidgetClearn2State();
}

class _ScaffoldAppbarWidgetClearn2State extends State<ScaffoldAppbarWidgetClearn2> with SingleTickerProviderStateMixin {

  //存放各个可选项的数组
  List<Item> items= <Item>[
    Item(title:"Item1",icons:Icons.directions_car),
    Item(title:"Item2",icons:Icons.directions_bike),
    Item(title:"Item3",icons:Icons.directions_boat),
    Item(title:"Item4",icons:Icons.directions_walk),
  ];
//创建切换控制器
  TabController? _tabController;
  int _selectIndex=0;
  List<Widget> tabs=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length:4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        bottom: TabBar(
          //选项可滚动
        isScrollable:true,
          //为TabBar配置控制器
          controller: _tabController,
          tabs:[
            Tab(
              text: "item1",
              icon: Icon(Icons.directions_car),
            ),
            Tab(
              text: "item2",
              icon: Icon(Icons.directions_bike),
            ),
            Tab(
              text: "item2",
              icon: Icon(Icons.directions_bike),
            ),
            Tab(
              text: "item2",
              icon: Icon(Icons.directions_bike),
            )
          ],
          onTap: (int index){
setState(() {
  _selectIndex=index;
});
          },
        ),
      ),
      body:TabBarView(
        controller: _tabController,
        children: [
          Center(child:Text("item1") ),
          Center(child:Text("item2") ),
          Center(child:Text("item3") ),
          Center(child:Text("item4") ),
        ],
      )
    );
  }
}

class Item{
  String? title;
  IconData? icons;
  Item({this.title,this.icons});
}
