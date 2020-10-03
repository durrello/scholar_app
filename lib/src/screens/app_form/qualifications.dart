import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported screens
import 'package:scholar_app/src/screens/app_form/documents.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';
import 'package:scholar_app/src/widgets/exit_continue_buttons.dart';

//imported models
import 'package:scholar_app/src/models/date_from_to.dart';
import 'package:scholar_app/src/models/programs.dart';
import 'package:scholar_app/src/models/qualifications.dart';


class QualificationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QualificationScreenState();
  }

}
class QualificationScreenState extends State<QualificationScreen> {

  String company;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//institution validation function
  Widget _buildInstitution() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Company'),
      validator: (String value){
        if(value.isEmpty && value.length < 6){
          return 'Company is required';
        }
      },
      onSaved: (String value){
        company = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Qualifications"), backgroundColor: primary,),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: CustomHeader(text: "Qualification Details")),
                      _buildInstitution(),
                      DateFromTo(),
                      Qualifications(),
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
                                    DocumentScreen())),
                          }
                      }),
            ],
          ),
        )
    );
  }

}



