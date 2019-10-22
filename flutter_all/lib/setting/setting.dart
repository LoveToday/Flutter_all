import 'package:flutter/material.dart';
import 'package:flutter_all/router/router.dart';
import 'package:flutter_all/setting/customNavBar.dart';
import 'package:flutter_all/setting/input.dart';
import 'package:flutter_all/setting/requestHttp.dart';
class SettingPage extends StatefulWidget {
  SettingPage(){
    print("Hello world");
  }


  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("设置"),
         ),
         body: ListView(
           children: <Widget>[
             ListTile(
               title: Text('自定义导航'),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => CustomNavBar(arguments: {"id": 12334},)));
                //  Navigator.of(context).pushNamed("/setting/customNavBar");
                //  Navigator.pushNamed(context, "/setting/customNavBar");
               },
             ),
             ListTile(
               title: Text('输入框'),
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => InputPage()));
               },
             ),
             ListTile(
               title: Text('网络请求'),
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestHttpPage()));
               },
             ),
           ],
         ),
       ),
    );
  }
}