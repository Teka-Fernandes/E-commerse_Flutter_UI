import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List <String> categorias = ["Home","Tiara", "Brincos", "Bolsas", "Ganchos"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const
      EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

 Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const
            EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(categorias[index],
                style: TextStyle( fontWeight: FontWeight.bold,fontSize: 15,
                color: Colors.black),
               ),
                Container(
                  margin: EdgeInsets.only(top:2),
                  height: 3,
                  width: 45,
                  color: selectedIndex == index ? Colors.pinkAccent: Colors.transparent,
          )
        ],
      ),
      ),
    );
 }
}
