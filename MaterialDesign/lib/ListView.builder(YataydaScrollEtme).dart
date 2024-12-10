import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:materialdesign/Detay.dart';

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
  String alinanVeri="";
  var tfC=TextEditingController();
  var renkler=[Colors.blueAccent,Colors.yellow];
  var ulkeler=["Türkiye","Almanya","İtalya","Rusya","Çin","İsviçre","Hollanda","Amerika","Endonezya","Küba","Karadağ"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("ListView.Builder",style: TextStyle(fontSize: 15),),
      ),
      body: SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ulkeler.length,
            itemBuilder:(context,indeks){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Detay(ulkeAdi: ulkeler[indeks])));
                  //print("${ulkeler[indeks]} tıklandı");
                },
                child: Card(
                  color: renkler[indeks%2],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: Row(
                        children: [
                          Text(ulkeler[indeks]),
                          Spacer(),
                          PopupMenuButton(
                            icon: Icon(Icons.more_vert),
                            itemBuilder: (context)=>[
                              PopupMenuItem(
                                value: 1,
                                child: Text("Sil",),),
                              PopupMenuItem(
                                value: 2,
                                child: Text("Güncelle",),),

                            ],
                            onCanceled: (){
                              print("Seçim Yapılmadı");
                            },
                            onSelected: (menuItemValue){
                              if(menuItemValue==1){
                                setState(() {
                                  ulkeler.removeAt(indeks);
                                });
                              }
                              if(menuItemValue==2){
                                setState(() {
                                  showDialog(
                                      context: context,

                                      builder:(BuildContext context){
                                        return AlertDialog(
                                          title: Text("Başlık",style: TextStyle(color: Colors.white),),
                                          content: SizedBox(
                                            width: 80,
                                            child: Column(
                                              children: [
                                                TextField(
                                                  controller: tfC,
                                                  decoration: InputDecoration(
                                                    labelText: "Veri",
                                                  ),
                                                ),


                                              ],
                                            ),
                                          ),
                                          backgroundColor: Colors.lightGreenAccent,
                                          actions: [

                                            TextButton(
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                                child: Text("İptal")),
                                            TextButton(
                                              onPressed: (){
                                                setState(() {
                                                  alinanVeri=tfC.text;
                                                  ulkeler[indeks]=alinanVeri;
                                                  Navigator.pop(context);
                                                  tfC.text="";
                                                });


                                              },
                                              child: Text("Veri Oku"),),
                                          ],
                                        );
                                      });
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );


            }

        ),
      ),


    );
  }
}


