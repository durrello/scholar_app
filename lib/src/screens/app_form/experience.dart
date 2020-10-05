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
import 'package:scholar_app/src/models/validation/company_name.dart';
import 'package:scholar_app/src/models/validation/role_in_company.dart';
import 'package:scholar_app/src/models/validation/work_desc.dart';

class ExperienceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExperienceScreenState();
  }
}

class ExperienceScreenState extends State<ExperienceScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
                      CompanyNameForm(),
                      RoleForm(),
                      DateFromTo(),
                      WorkDescForm(),
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
