import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bitcoin"),
        backgroundColor: Colors.orange,
        toolbarHeight: 30,
        toolbarOpacity: 0.6,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "images/bitcoin_vector.png",
            width: 250,
          ),
          
        ],
      ),
    );
  }
}
