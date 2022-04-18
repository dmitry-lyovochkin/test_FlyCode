
import 'package:json_annotation/json_annotation.dart';

part 'marvel_model.g.dart';

@JsonSerializable()
class MarvelModel {
  String? name;
  String? realname;
  String? team;
  String? firstappearance;
  String? createdby;
  String? publisher;
  String? imageurl;
  String? bio;

  MarvelModel({
    this.name,
    this.realname,
    this.team,
    this.firstappearance,
    this.createdby,
    this.publisher,
    this.imageurl,
    this.bio
  });

  factory MarvelModel.fromJson(Map<String, dynamic> json) => _$MarvelModelFromJson(json);
  Map<String, dynamic> toJson() => _$MarvelModelToJson(this);
  
  }

