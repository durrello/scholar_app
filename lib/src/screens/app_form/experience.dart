import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported screens
import 'package:scholar_app/src/screens/app_form/qualifications.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/widgets/CustomHeader.dart';
import 'package:scholar_app/src/widgets/exit_continue_buttons.dart';
import 'package:scholar_app/src/commons.dart';

//imported models
import 'package:scholar_app/src/models/date_from_to.dart';
import 'package:scholar_app/src/models/programs.dart';

class ExperienceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExperienceScreenState();
  }
}

class ExperienceScreenState extends State<ExperienceScreen> {
  String company;
  String role;
  String wordDesc;

  //dropdown initial state
  int programs = 1;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//company validation function
  Widget _buildCompany() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Company'),
      validator: (String value) {
        if (value.isEmpty && value.length < 6) {
          return 'Company is required';
        }
      },
      onSaved: (String value) {
        company = value;
      },
    );
  }

//role validation function
  Widget _buildRole() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'What was/is your role'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Role is Required';
        }
      },
      onSaved: (String value) {
        role = value;
      },
    );
  }



//work description validation function
  Widget buildWorkDesc() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Work description'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Description is required';
        }
      },
      onSaved: (String value) {
        wordDesc = value;
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Work Experience"),
          backgroundColor: primary,
        ),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomHeader(text: "Work Experience"),
                      _buildCompany(),
                      _buildRole(),
                      DateFromTo(),
                      buildWorkDesc(),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
                          child: CustomHeader(text: "Relation with Academics")),
                      Programs(),
                    ],
                  )),
              Buttons(
                  onPressed: () => {
                        if (!_formkey.currentState.validate())
                          {}
                        else
                          {
                            _formkey.currentState.save(),
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    QualificationScreen())),
                          }
                      }),
            ],
          ),
        ));
  }
}
