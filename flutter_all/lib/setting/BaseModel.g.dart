// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BaseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) {
  return BaseModel(
    code: json['code'] as int,
    msg: json['msg'] as String,
    data: (json['data'] as List)
        .map((e) => StoryItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

StoryItem _$StoryItemFromJson(Map<String, dynamic> json) {
  return StoryItem(
    text: json['text'] as String,
    name: json['name'] as String,
    screen_name: json['screen_name'] as String,
    profile_image: json['profile_image'] as String,
  );
}

Map<String, dynamic> _$StoryItemToJson(StoryItem instance) => <String, dynamic>{
      'text': instance.text,
      'name': instance.name,
      'screen_name': instance.screen_name,
      'profile_image': instance.profile_image,
    };
