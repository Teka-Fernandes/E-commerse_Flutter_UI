import 'package:flutter/material.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.05,
      margin: EdgeInsets.only(bottom:0),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 56,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(color: Colors.pinkAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36.00),
                    bottomRight: Radius.circular(36.00)
                )
            ),
            child: Row(
              children: <Widget>[
                Text('logo'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),

              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal:45),
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.pinkAccent.withOpacity(0.23),
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12,
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.pinkAccent.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(Icons.search,
                        size: 25),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

