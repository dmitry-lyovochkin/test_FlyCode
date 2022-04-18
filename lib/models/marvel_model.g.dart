// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarvelModel _$MarvelModelFromJson(Map<String, dynamic> json) => MarvelModel(
      name: json['name'] as String?,
      realname: json['realname'] as String?,
      team: json['team'] as String?,
      firstappearance: json['firstappearance'] as String?,
      createdby: json['createdby'] as String?,
      publisher: json['publisher'] as String?,
      imageurl: json['imageurl'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$MarvelModelToJson(MarvelModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'realname': instance.realname,
      'team': instance.team,
      'firstappearance': instance.firstappearance,
      'createdby': instance.createdby,
      'publisher': instance.publisher,
      'imageurl': instance.imageurl,
      'bio': instance.bio,
    };
