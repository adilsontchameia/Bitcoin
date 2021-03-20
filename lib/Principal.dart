import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Preco
  String _preco = "0";
  //Metodo de recuperar preco
  void _recuperarPreco() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bitcoin"),
          backgroundColor: Colors.orange,
          toolbarHeight: 30,
          toolbarOpacity: 0.6,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("images/bitcoin_vector.png"),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 30),
                child: Text(
                  "Valor da Bitcoin: " + _preco + " \$",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Update",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.orange,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              ),
              Text(
                "Picture by: pngtree.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ));
  }
}
