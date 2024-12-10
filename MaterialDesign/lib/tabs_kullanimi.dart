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
  Future<List<String>> verileriGetir() async{
    var ulkelerListesi=["Türkiye","Almanya","İtalya","Rusya","Çin","İsviçre","Hollanda","Amerika","Endonezya","Küba","Karadağ"];
    return  ulkelerListesi;

  }
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Anasayfa"),
          bottom: TabBar(
              tabs: [
                Tab(text: "Bir",),
                Tab(icon: Icon(Icons.looks_two,),),
                Tab(text: "Üç",icon: Icon(Icons.looks_3,),),

          ],
          indicatorColor: Colors.blueAccent,
          
          labelColor: Colors.deepOrange,
          ),
        ),
        body: TabBarView(children: [
          Sayfa1(),
          Sayfa2(),
          Sayfa3(),

        ],),

      ),
    );
  }
}
