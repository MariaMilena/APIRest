import 'package:flutter/material.dart';
import 'package:apirest_yt/home/getData.dart';

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
      home: MyHomePage(title: 'Data from API'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getUserData(),
            builder: (context, snapshot){
              if(snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text("Carregando..."),
                  ),
                );
              } else
                return ListView.builder(
                  itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(snapshot.data[i].address.street),
                        subtitle: Text(snapshot.data[i].address.geo.lat),
                        trailing: Text(snapshot.data[i].email),
                      );
                    }
                );
            },
          ),
        ),
      ),
    );
  }
}






