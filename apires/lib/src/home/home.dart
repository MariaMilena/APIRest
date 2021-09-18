import 'package:apires/model/address.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../model/users.dart';
import 'components/card.dart';
import 'functions/getData.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return Center(child: Text("Ocorreu um erro..."));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text("Carregando..."));
          }
          List<User> listaUsuarios = snapshot.data as List<User>;
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: listaUsuarios.length,
              itemBuilder: (context, index) {
                return card(listaUsuarios[index], size);
              },
            ),
          );
        },
      ),
    );
  }
}
