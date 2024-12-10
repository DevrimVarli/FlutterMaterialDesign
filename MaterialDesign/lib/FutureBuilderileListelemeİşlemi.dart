import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<String>> verileriGetir() async {
    var ulkelerListesi = [
      "Türkiye",
      "Almanya",
      "İtalya",
      "Rusya",
      "Çin",
      "İsviçre",
      "Hollanda",
      "Amerika",
      "Endonezya",
      "Küba",
      "Karadağ"
    ];
    // Simulate a delay
    return ulkelerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "ListView.Builder",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: FutureBuilder<List<String>>(
        future: verileriGetir(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Bir hata oluştu: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            var ulkeListesi = snapshot.data;
            return ListView.builder(
              itemCount: ulkeListesi!.length,
              itemBuilder: (context, indeks) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${ulkeListesi[indeks]}",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text("Veri bulunamadı"));
          }
        },
      ),
    );
  }
}
