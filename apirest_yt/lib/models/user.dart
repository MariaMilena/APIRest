import '../models/address.dart';

class User {
  final String name, email, username;
  Address address;

  User(this.name, this.email, this.username, this.address);
}