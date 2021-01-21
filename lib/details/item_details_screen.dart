import 'package:flutter/material.dart';


class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [ ItemDetails(
          image: "assests/WhatsApp Image 2021-01-06 at 11.32.50 PM.png",
          price: 0.00,
        ),

        ],
      ),

    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    Key key, this.image, this.title, this.price, this.press,

  }) : super(key: key);
  final String image, title;
  final double price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        bottom: 20 * 2.5,
      ),
      width: size.width,
      child: Column(
        children: <Widget>[
          Container( child: GestureDetector(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(),
              width: size.width,
              height: 450,
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
            child: Container(
                margin: EdgeInsets.only(
                  top:4,
                ),

                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                ),

                child: Row(
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
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 4,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Tiara de Perolas\n',style: TextStyle(
                fontSize: 16,
              ),),
            ),
            color: Colors.white,
            height: 70,
            width: size.width,


          )
        ],
      ),
    );

  }
}


/*
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
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
)*/
