import 'package:flutter/material.dart';
import 'package:okay/body.dart';

void main() =>
  runApp(new MaterialApp(
    title:'Training',
    home: Training(),
  ));

class Training extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:Text('lipf shop'.toUpperCase()),
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
          icon:Icon(Icons.menu, size:30),
        onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart_outlined, color: Colors.white, size:30),
            onPressed: () {},
          )
        ],
      ),
      body: Body(),
    );
  }
}

