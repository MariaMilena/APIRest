import '../models/geo.dart';

class Address {
  final String street, suite, city;
  Geo geo;

  Address(this.street, this.suite, this.city, this.geo);
}