// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    //userId: json['userId'] as int,
    street: json['street'] as String,
    suite: json['suite'] as String,
    city: json['city'] as String,
    geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
    //completed: json['completed'] as bool,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  //'userId': instance.userId,
  'street': instance.street,
  'suite': instance.suite,
  'city': instance.city,
  'geo': instance.geo.tojson(),
  /*'completed': instance.completed,*/
};
