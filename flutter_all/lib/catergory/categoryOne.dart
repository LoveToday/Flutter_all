import 'package:flutter/material.dart';
class CategoryOne extends StatefulWidget {
  CategoryOne({Key key}) : super(key: key);

  _CategoryOneState createState() => _CategoryOneState();
}

class _CategoryOneState extends State<CategoryOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: GridView.count(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
          ],
        ),
    );
  }
}