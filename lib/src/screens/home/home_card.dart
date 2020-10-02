import 'package:flutter/material.dart';
import 'package:scholar_app/src/commons.dart';

class HomeCard extends StatelessWidget {

  final String text;
  final Color colors;
  final IconData iconData;
  final VoidCallback onPressed;
  final Image image;

  const HomeCard({Key key, this.text, this.colors, this.iconData, this.image, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: onPressed,
      child: Card(
        margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  image,
                  new Positioned(
                      top: -20,
                      right: -20,
                      child: new Container(
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(4.0)),
                        width: 25,
                        height: 25,
                        alignment: Alignment.center,
                        child: Icon(iconData, color: colors ?? primary, size: 30,),
                      )),
                ],
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
