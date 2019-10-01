import 'package:flutter/material.dart';
class CustomNavBar extends StatefulWidget {
  Map arguments;
  CustomNavBar({Key key, this.arguments}) : super(key: key);

  _CustomNavBarState createState() => _CustomNavBarState(arguments: this.arguments);
}

class _CustomNavBarState extends State<CustomNavBar> {
  Map arguments;
  _CustomNavBarState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.red,
           leading: IconButton(
             color: Colors.black,
             icon: Icon(Icons.arrow_back_ios),
             onPressed: (){
               Navigator.pop(context);
             },
           ),
           actions: <Widget>[
             FlatButton(
               padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
               child: Text("点击"),
               onPressed: (){

               },
             ),
             IconButton(
               icon: Icon(Icons.settings_phone),
               onPressed: (){

               },
             ),
             IconButton(
               icon: Icon(Icons.settings),
               onPressed: (){

               },
             ),
           ],
           title: Text("自定义导航条"),
         ),
         body: Container(
           child: RaisedButton(
             child: Text("按钮"),
             onPressed: (){
               print(this.arguments);
             },
           ),
         ),
       ),
    );
  }
}