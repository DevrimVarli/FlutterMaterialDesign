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
  var formKey=GlobalKey<FormState>();
  var tfka=TextEditingController();
  var tfpass=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: tfka,
                      decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                      validator: (tfgirdisi){
                        if(tfgirdisi!.isEmpty){
                          return "Kulanici adi giriniz.";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: tfpass,
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Şifre"),
                      validator: (tfgirdisi){
                        if(tfgirdisi!.isEmpty){
                          return "Şifre  giriniz.";
                        }
                        if(tfgirdisi.length<6){
                          return "Şifre en az 6 haneli olmalıdır.";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                        onPressed: (){
                          bool kontrolSonucu=formKey.currentState!.validate();
                          if(kontrolSonucu){
                            String ka=tfka.text;
                            String pass=tfpass.text;
                            print("Kullanici Adi:${tfka.text}--Şifre:${tfpass.text}");
                          }
                          },
                        child: Text("Giriş")
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
