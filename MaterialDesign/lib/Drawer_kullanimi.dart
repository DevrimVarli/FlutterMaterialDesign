import 'package:flutter/material.dart';
import 'package:materialdesign/Sayfa1.dart';
import 'package:materialdesign/Sayfa2.dart';
import 'package:materialdesign/Sayfa3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
  var sayfaListesi=[Sayfa1(),Sayfa2(),Sayfa3()];
  int secilenIndeks=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Anasayfa"),

      ),
      body: sayfaListesi[secilenIndeks],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Başlık Tasarımı"),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              title: Text("Sayfa1"),
              onTap: (){
                setState(() {
                  secilenIndeks=0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sayfa2"),
              leading:Icon(Icons.looks_two) ,
              onTap: (){
                setState(() {
                  secilenIndeks=1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sayfa3"),
              onTap: (){
                setState(() {
                  secilenIndeks=2;
                });
                Navigator.pop(context);
              },
            ),




          ],
        ),

      ),



    );
  }
}
