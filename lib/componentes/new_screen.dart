import 'package:flutter/material.dart';
import 'package:okay/componentes/body2.dart';
import 'package:okay/main.dart';

class MaisItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Popular'),
        leading: IconButton(
        icon:Icon(Icons.arrow_back_sharp, size:30),
          onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Training(),
              ),
          );
          },
        ),
          actions: <Widget>[
      IconButton(icon: Icon(Icons.search, color: Colors.white, size:30),
      onPressed: () {},)
          ]
      ),
      body: Body2(),
    );
  }
}
