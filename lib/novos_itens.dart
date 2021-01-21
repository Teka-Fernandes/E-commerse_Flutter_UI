import 'package:flutter/material.dart';

class ItemsNovos extends StatelessWidget {
  const ItemsNovos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NovosItems(
                image:"assests/maxresdefault.jpg",
                press: () {},
                title: 'Tiara',
                price: 0.0,
              ),
              NovosItems(
                image:"assests/117035308_115383073601633_2543399354530207687_o.jpg",
                press: () {},
                title: 'Gancho',
                price: 0.0,
              ),
              NovosItems(
                image:"assests/121471938_144560000683940_228121559664252276_n.jpg",
                press: () {},
                title: 'Brincos',
                price: 0.0,
              ),
              NovosItems(
                image:"assests/125484624_156283172844956_3515419088583855297_o.jpg",
                press: () {},
                title: 'Gancho',
                price: 0.0,
              ),
              NovosItems(
                image:"assests/117883017_122162949590312_8242974435448080819_n.jpg",
                press: () {},
                title: 'Bolsa',
                price: 0.0,
              ),
              NovosItems(
                image:"assests/116710987_115372946935979_4357769165103649987_o.jpg",
                press: () {},
                title: 'Gancho',
                price: 0.0,
              ),
            ],
          ),
        );

  }
}

class NovosItems extends StatelessWidget {
  const NovosItems({
    Key key, this.image, this.press, this.title, this.price,

  }) : super(key: key);
  final String image, title;
  final double price;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 20/2,
        bottom: 35,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container( child: GestureDetector(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(),
              width: size.width *0.4,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )
              ),
            ),
          ), ),
          //Image.asset(image, height: 200,
          //),
          GestureDetector(
            onTap: press,
            child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: Colors.pinkAccent.withOpacity(0.23),
                      )
                    ]
                ),

                child:
                Column(
                  children: [
                    Row(
                      children: [Container(
                          child: Text(
                            '\$$price',
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color:Colors.pinkAccent),

                          )
                      ),
                        Spacer(),
                        Container(
                            child: IconButton(icon: Icon(Icons.favorite_border_outlined, size: 20,), onPressed: () {  },)
                        )

                      ],),
                    Row(
                      children: <Widget>[RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            //TextSpan(
                            //   text: "$local".toUpperCase(),
                            //   style: TextStyle(
                            //       color: Colors.pinkAccent.withOpacity(0.5)
                            //   )
                            //   )
                          ]
                      ),
                      ),
                      ],
                    ),

                  ],)

            ),
          )
        ],
      ),
    );
  }
}
