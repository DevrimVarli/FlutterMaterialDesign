import 'package:flutter/cupertino.dart';

class Sayfa3 extends StatefulWidget {
  const Sayfa3({super.key});

  @override
  State<Sayfa3> createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("Sayfa3",style: TextStyle(fontSize: 30),),
    );
  }
}
