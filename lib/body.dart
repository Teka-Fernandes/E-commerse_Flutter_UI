import 'package:flutter/material.dart';
import 'package:okay/categoria.dart';
import 'package:okay/componentes/new_screen.dart';
import 'package:okay/tittle_with_btn.dart';
import 'package:okay/tittle_with_under_line.dart';

import 'header_with_search_box.dart';
import 'novos_itens.dart';
import 'remended_items.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        HeaderWithSearchBox(size: size),
        Categorias(),
        //TittleWithBtn(tittle: "Popular", press: (){},),
        Expanded(
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  //HeaderWithSearchBox(size: size),
                  TittleWithBtn(tittle: "Popular", press: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => MaisItens()
                      )
                    );
                  },
                  ),
                  RecomendedItems(),
                  TittleWithBtn(tittle: 'Novos Items', press: () {},),
                  ItemsNovos(),
                  TittleWithBtn( tittle: "Promoção", press: (){},),
                  RecomendedItems(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}

