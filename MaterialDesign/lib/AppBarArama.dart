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
  bool aramaYapiliyorMu=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:aramaYapiliyorMu? TextField(
          decoration: InputDecoration(
            hintText: "Arama için bişey yazın",
          ),
          onChanged: (aramaSonucu){
            print("Arama Sonucu:$aramaSonucu");
          },

        ):Text("AppBar Arama") ,
        actions: [
          aramaYapiliyorMu?IconButton(
              onPressed: (){
                setState(() {
                  aramaYapiliyorMu=false;
                });
              },
              icon:  Icon(Icons.cancel)
          ):IconButton(
              onPressed: (){
                setState(() {
                  aramaYapiliyorMu=true;
                });
              },
              icon: Icon(Icons.search),
          ),
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
