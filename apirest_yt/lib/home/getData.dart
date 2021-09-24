import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:apirest_yt/models/user.dart';
import 'package:apirest_yt/models/address.dart';
import 'package:apirest_yt/models/geo.dart';

getUserData() async {
  var response = await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
  var jsonData = jsonDecode(response.body);

  List<User> users = [];

  for(var u in jsonData){
    Geo geo = Geo(u["address"]["geo"]["lat"], u["address"]["geo"]["ing"]);
    Address address = Address(u["address"]["street"], u["address"]["suite"], u["address"]["city"], geo);
    //print(u["address"]["geo"]["lat"]);
    User user = User(u["name"], u["email"], u["username"], address);
    users.add(user);
  }
  return users;
}