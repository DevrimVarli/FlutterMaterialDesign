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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one),
              label: "Bir",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: "İki",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: "Üç",

          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white,
        currentIndex: secilenIndeks,
        onTap: (Indeks){
          setState(() {
            secilenIndeks=Indeks;
          });
        },
      ),


    );
  }
}
