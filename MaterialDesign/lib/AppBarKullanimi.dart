import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.blue,
        title: Column(
          children: [
            Text("Başlık",style: TextStyle(color: Colors.white,fontSize: 20),),
            Text("Alt Başlık",style: TextStyle(color: Colors.white,fontSize: 10),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
          onPressed: (){
            print("Menu Icon Tıklandı");
          },
        ),
        actions: [
          TextButton(
              onPressed: (){
                print("Çıkış Tıklandı");
              },
              child: Text("Çıkış",style: TextStyle(color: Colors.black),),),
          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline),
            onPressed: (){
              print("Bilgi Tıklandı");
            },
          ),
          PopupMenuButton(
            itemBuilder:(context)=>[
              PopupMenuItem(
                value: 1,
                child: Text("Sil",style: TextStyle(color: Colors.black),),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Güncelle",style: TextStyle(color: Colors.black),),
              ),
            ] ,
            onCanceled: (){
              print("Seçim Yapilmadi");
            },
            onSelected: (menuItemValue){
              if(menuItemValue==1){
                print("Sil Seçildi");
              }
              if(menuItemValue==2){
                print("Güncelle Seçildi");
              }

            },
            child:Icon(Icons.more_vert),),
        ],


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),

    );
  }
}
