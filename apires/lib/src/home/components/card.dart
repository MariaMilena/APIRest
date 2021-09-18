import 'package:apires/model/users.dart';
import 'package:flutter/material.dart';

Widget card(User user, Size size) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1),borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text("UserId: "+user.userId.toString()),
        Text("Id: "+user.id.toString()),
        Text("Name: "+user.name.toString()),
        Text("Username: "+ user.username.toString()),
        Text("Email: "+ user.email.toString()),
        Text("Street: "+ user.address.street.toString()),
        Text("Suite: "+ user.address.suite.toString()),
        Text("City: "+ user.address.city.toString()),
        //Icon(user.completed == true ? Icons.done : Icons.close),
      ],
    ),
  );
}