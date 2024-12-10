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
      body:GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
          children: [
            GestureDetector(
              onTap: (){
                print("Güneş tıklandı");
              },
              child: Card(
                color: Colors.lightGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny,color: Colors.amber,),
                    Text("Güneş",style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.black ),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Ay tıklandı");
              },
              child: Card(
                color: Colors.lightGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.brightness_3,color: Colors.white,),
                    Text("Ay",style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.black ),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Yıldız tıklandı");
              },
              child: Card(
                color: Colors.lightGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star,color: Colors.amber,),
                    Text("Yıldız",style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.black ),),
                  ],
                ),
              ),
            ),
            ],

      ),

    );
  }
}
