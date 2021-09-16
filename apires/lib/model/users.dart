import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class User{
  int userId;
  int id;
  String title;
  bool completed;

  User({required this.userId,required this.id,required this.title,required this.completed});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}