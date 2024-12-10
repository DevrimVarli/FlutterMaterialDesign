import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  String ulkeAdi;

  Detay({required this.ulkeAdi});



  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.ulkeAdi}",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
          ],
        ),
      ),
    );
  }
}
