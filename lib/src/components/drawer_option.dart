import 'package:flutter/material.dart';
import 'package:scholar_app/src/commons.dart';

class DrawerOption extends StatelessWidget {
  final String text;
  final Color colors;
  final IconData iconData;
  final VoidCallback onPressed;

  const DrawerOption({Key key, this.text, this.colors, this.onPressed, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(text),
        leading: Icon(iconData, color: primary,),

    ));
  }
}
