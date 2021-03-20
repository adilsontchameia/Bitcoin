import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Preco
  String _preco = "0";
  //Metodo de recuperar preco
  void _recuperarPreco() async {
    //URL da API
    String url = "https://blockchain.info/ticker";
    //Await - Vaia aguar a consulta
    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);
    print("Resultado: " + retorno.toString());
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/bitcoin_vector.png",
                width: 250,
              ),
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
                onPressed: _recuperarPreco,
                child: Text(
                  "Update",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.orange,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Picture by: pngtree.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
