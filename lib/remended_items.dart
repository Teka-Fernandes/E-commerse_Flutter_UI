import 'package:flutter/material.dart';
import 'package:okay/details/details_screen.dart';


class RecomendedItems extends StatelessWidget {
  const RecomendedItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendItemCard(
            image: "assests/WhatsApp Image 2021-01-06 at 11.32.50 PM.png",
            title: "Tiara",
            local: "Golf II",
            price: 0.00,
            press: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );},
          ),
          RecomendItemCard(
            image: "assests/WhatsApp Image 2021-01-06 at 11.32.51 PM.jpeg",
            title: "Tiara",
            local: "Golf II",
            price: 0.00,
            press: () {},
          ),
          RecomendItemCard(
            image: "assests/WhatsApp Image 2021-01-06 at 11.32.52 PM.jpeg",
            title: "Gancho",
            local: "Golf II",
            price: 0.00,
            press: () {},
          ),
          RecomendItemCard(
            image: "assests/WhatsApp Image 2021-01-06 at 11.32.51 PM.jpeg",
            title: "Gancho",
            local: "Golf II",
            price: 0.00,
            press: () {},
          ),

        ],
      ),
    );
  }
}

class RecomendItemCard extends StatelessWidget {
  const RecomendItemCard({
    Key key, this.image, this.title, this.local, this.price, this.press,

  }) : super(key: key);

  final String image, title, local;
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
          Image.asset(image),
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
    );}}