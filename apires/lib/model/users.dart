import 'package:apires/model/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class User{
  //int userId;
  int id;
  String name;
  String username;
  String email;
  Address address;
  /*bool completed;*/
  User({required this.id, required this.name, required this.username, required this.email, required this.address});
  //User({required this.userId,required this.id,required this.title,required this.completed});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}