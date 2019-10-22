import 'package:json_annotation/json_annotation.dart';
part 'BaseModel.g.dart';
// flutter packages pub run build_runner build
@JsonSerializable(nullable: false)
class BaseModel {
  final int code;
  final String msg;
  final List<StoryItem> data;

  BaseModel({this.code, this.msg, this.data});
  //反序列化
  factory BaseModel.fromJson(Map<String, dynamic> json) => _$BaseModelFromJson(json);
//序列化
  Map<String, dynamic> toJson() => _$BaseModelToJson(this);

}

// part 'StoryItem.g.dart';

@JsonSerializable(nullable: false)
class StoryItem {
  // int type;
  String text;
  // int user_id;
  String name;
  String screen_name;
  String profile_image;
  // String created_at;
  // String create_time;
  // String passtime;
  // String love;
  // int hate;
  // int comment;
  // int repost;
  // int bookmark;
  // String bimageuri;
  // String voiceuri;

  StoryItem({this.text, this.name, this.screen_name, this.profile_image});

 //StoryItem({this.type, this.user_id, this.name, this.screen_name, this.profile_image, this.created_at, this.create_time,
  //this.passtime, this.love, this.hate, this.comment, this.repost, this.bookmark, this.bimageuri, this.voiceuri});

  //反序列化
  factory StoryItem.fromJson(Map<String, dynamic> json) => _$StoryItemFromJson(json);
//序列化
  Map<String, dynamic> toJson() => _$StoryItemToJson(this);

}
