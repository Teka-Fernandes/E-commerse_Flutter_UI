import 'package:flutter/material.dart';


class TittleWithUnderLine extends StatelessWidget {
  const TittleWithUnderLine({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 24,
          child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20 / 4),
                  child: Text(text,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: 20/4),
                    height: 7,
                    color: Colors.pinkAccent.withOpacity(0.2),
                  ),
                )
              ]
          ),
        );
  }
}

