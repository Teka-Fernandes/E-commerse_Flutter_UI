
import 'package:flutter/material.dart';
import 'package:okay/tittle_with_under_line.dart';


class TittleWithBtn extends StatelessWidget {
  const TittleWithBtn ({
    Key key,
    @required this.tittle, this.press,
  }) : super(key: key);

  final String tittle;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            TittleWithUnderLine(text:'$tittle'),
            Spacer(),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.pinkAccent,
              onPressed: press,
              child: Text("Mais", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      );
  }
}