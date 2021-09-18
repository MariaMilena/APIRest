import 'package:json_annotation/json_annotation.dart';
import 'package:apires/model/geo.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String street;
  String suite;
  String city;
  Geo geo;

  Address({required this.street, required this.suite, required this.city, required this.geo});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}