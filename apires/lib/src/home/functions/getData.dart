import 'package:apires/model/users.dart';
import 'package:dio/dio.dart';

Future<List<User>> getData() async {
  final response = await Dio().get("https://jsonplaceholder.typicode.com/todos");
  List<dynamic> dynamiclist = response.data.toList();
  return dynamiclist.map((e) => User.fromJson(e)).toList();
}