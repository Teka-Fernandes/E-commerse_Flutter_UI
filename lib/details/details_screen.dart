import 'package:flutter/material.dart';
import 'package:okay/details/body3.dart';

import '../main.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('Details'),
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
            IconButton(icon: Icon(Icons.share, color: Colors.white, size:30),
              onPressed: () {},)
          ]
      ),
      body: Body3(),
    );
  }
}