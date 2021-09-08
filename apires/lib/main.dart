import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dio dio = Dio();
  // User userData;
  @override
  void initState() { // Sera executado antes de gerar o context
    // TODO: implement initState
    getData();
    super.initState();
  }

  Future<void> getData() async {
    Response response = await dio.get("https://jsonplaceholder.typicode.com/todos");
    print(response);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            child: Text(index.toString()),
          );
        },
      ),
    );
  }
}

