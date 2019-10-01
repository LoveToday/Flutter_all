import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var flag = true;
  var controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    this.controller.text = "初始值";
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("输入框"),
        ),
        body: ListView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("TextField"),
            ),
            TextField(
              controller: this.controller,
              maxLength: 10000,
              decoration: InputDecoration(
                hintText: '请输入内容'
              ),
              onChanged: (value){
                setState(() {
                  this.controller.text = value;
                });
              },
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                hintText: '请输入内容',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '多行文本框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '密码框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                hintText: '框',
                border: OutlineInputBorder(),
                labelText: "用户名"
              ),
            ),
             SizedBox(height: 30,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '密码框',
                border: OutlineInputBorder(),
                labelText: "密码",
                labelStyle: TextStyle()
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.shop),
                hintText: '框',
                border: OutlineInputBorder(),
                labelText: "用户名"
              ),
            ),
            SizedBox(height: 30,),
            Text("Checkbox"),
            Checkbox(
              value: this.flag,
              onChanged: (isSelected){
                setState(() {
                  this.flag = !this.flag;
                });
              },
            ),
            SizedBox(height: 30,),
            Text("Checkbox"),
            CheckboxListTile(
              value: this.flag,
              onChanged: (isSelected){
                setState(() {
                  this.flag = !this.flag;
                });
              },
              title: Text("标题"),
              subtitle: Text("副标题"),
            )
          ],
        ),
      ),
    );
  }
}
