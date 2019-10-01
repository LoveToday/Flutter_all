import 'package:flutter/material.dart';
class CategoryTwo extends StatefulWidget {
  CategoryTwo({Key key}) : super(key: key);

  _CategoryTwoState createState() => _CategoryTwoState();
}

class _CategoryTwoState extends State<CategoryTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("第二个选"),
    );
  }
}