import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported screens
import 'package:scholar_app/src/screens/preview.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/widgets/CustomHeader.dart';
import 'package:scholar_app/src/widgets/exit_continue_buttons.dart';
import 'package:scholar_app/src/commons.dart';

//imported models
import 'package:scholar_app/src/models/campus.dart';
import 'package:scholar_app/src/models/date_from_to.dart';
import 'package:scholar_app/src/models/profile.dart';
import 'package:scholar_app/src/models/programs.dart';
import 'package:scholar_app/src/models/study_mode.dart';


class ApplicationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ApplicationScreenState();
  }
}

class ApplicationScreenState extends State<ApplicationScreen> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Application Details"),
          backgroundColor: primary,
        ),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      CustomHeader(text: "Application Details"),
                      Campus(),
                      Programs(),
                      Profile(),
                      StudyMode(),
                      DateFromTo(),
                    ],
                  )),
              Buttons(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new PreviewScreen())),
              )
            ],
          ),
        ));
  }
}
