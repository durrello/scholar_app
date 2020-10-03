import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/screens/home/home.dart';
import 'package:scholar_app/src/widgets/CustomText.dart';

class Buttons extends StatelessWidget {
  final String text;
  final Color colors;
  final IconData iconData;
  final VoidCallback onPressed;

  const Buttons(
      {Key key, this.text, this.colors, this.iconData, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          RaisedButton(
            child: CustomText(text: "Save and Exit", color: green),
            onPressed: () {
              return Alert(
                context: context,
                title: "Confirm",
                desc: "By clicking yes your information will be saved",
                buttons: [
                  DialogButton(
                    child: Text("Yes"),
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              HomeScreen()))
                    },
                    color: grey,
                  ),
                  DialogButton(
                    child: CustomText(
                        text: "No, Continue",
                        color: white,
                        textAlign: TextAlign.center),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: primary,
                  )
                ],
              ).show();
            },
          ),

          Spacer(),
          
          RaisedButton(
            child: CustomText(
              text: "Continue",
              color: green,
            ),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
