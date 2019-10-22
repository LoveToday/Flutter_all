import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import './BaseModel.dart';
// import 'package:json_annotation/json_annotation.dart';


class RequestHttpPage extends StatefulWidget {
  RequestHttpPage({Key key}) : super(key: key);

  /// 网络请求现在比较流行是dio

  _RequestHttpPageState createState() => _RequestHttpPageState();
}

class _RequestHttpPageState extends State<RequestHttpPage> {
  @override
  void initState() {
    super.initState();
    request();
  }

  void request() async {
    try {
      Response response =
          await Dio().get("https://www.apiopen.top/satinApi?type=1&page=1");
      // print(response);
      Map result = jsonDecode(response.toString());
      // print(result["data"]);
      BaseModel baseModel = BaseModel.fromJson(result);
      baseModel.data.forEach((model){
        print(model.text);
      });
      print(baseModel.data);
    } catch (e) {
      print(e);
    }


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("网络请求"),
        ),
      ),
    );
  }
}
