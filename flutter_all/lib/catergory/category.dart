import 'package:flutter/material.dart';
import 'package:flutter_all/catergory/categoryOne.dart';
import 'package:flutter_all/catergory/categoryTwo.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List tabs = [
    CategoryOne(),
    CategoryTwo()
  ].toList();
  var selectController;
  var selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "第一项",
              ),
              Tab(
                text: "第二项",
              )
            ],
          ),
          title: Text("分类"),
        ),
        body: TabBarView(
          children: tabs,
        ),
      ),
    );
  }
}
