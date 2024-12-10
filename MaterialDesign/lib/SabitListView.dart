import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title:Text("Güneş") ,
            subtitle: Text("Güneş alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Güneş Tıklandı");

            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_3),
            title:Text("Ay") ,
            subtitle: Text("Ay alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Ay Tıklandı");

            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title:Text("Yıldız") ,
            subtitle: Text("Yıldız alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Yıldız Tıklandı");

            },
          ),
          GestureDetector(
            onTap: (){
              print("Card tıklandı");
            },
            child: Card(
              color: Colors.deepPurpleAccent,
              child: Row(
                children: [
                  Text("Card Tasarım"),
                  Spacer(),
                  Icon(Icons.more_vert),
                ],
              ),

            ),

          ),
          GestureDetector(
            onTap: (){
              print("Contanier Tıklandı");
            },
            child: Container(
              height: 60,
              color: Colors.lightBlue,
              child: Row(
                children: [
                  Text("Contanier"),
                  Spacer(),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
          ),
        ],

      ),


    );
  }
}
