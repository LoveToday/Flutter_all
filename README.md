# Flutter_all
flutter各组件的功能详解

Json解析成对象

1. 引入google自己集成一个库

        dependencies:
          flutter:
            sdk: flutter
          # The following adds the Cupertino Icons font to your application.
          # Use with the CupertinoIcons class for iOS style icons.
          json_annotation: ^3.0.0

        dev_dependencies:
          flutter_test:
            sdk: flutter
          build_runner: ^1.7.1
          json_serializable: ^3.2.2
          
          
 2.创建BaseModel类
 
       import 'package:json_annotation/json_annotation.dart';
       //这个很关键
      part 'BaseModel.g.dart';
      // flutter packages pub run build_runner build
      @JsonSerializable(nullable: false)
      class BaseModel {
        final int code;
        final String msg;
        final List<StoryItem> data;

        BaseModel({this.code, this.msg, this.data});
      }
 
 2.执行命令 flutter packages pub run build_runner build
 
 3.BaseModel 添加方法
 
     //反序列化
      factory BaseModel.fromJson(Map<String, dynamic> json) => _$BaseModelFromJson(json);
    //序列化
      Map<String, dynamic> toJson() => _$BaseModelToJson(this);
 
 
 
 
 
 
 
 
 
 
