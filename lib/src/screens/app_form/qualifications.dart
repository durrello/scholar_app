import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/screens/app_form/documents.dart';
import 'package:scholar_app/src/screens/home/home.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';

class QualificationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QualificationScreenState();
  }

}
class QualificationScreenState extends State<QualificationScreen> {

  String institution;
  String fromTo;

  //gender dropdown initial state
  int qualification = 1;
  int programs = 1;




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
        institution = value;
      },
    );
  }

//date validation function
  Widget buildFromTo() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'From to'),
      validator: (String value){
        if(value.isEmpty){
          return 'From which year to which year';
        }
      },
      onSaved: (String value){
        fromTo = value;
      },
    );
  }

//qualification function
  Widget _buildQualification(){
    return Row(
      children: [
        Text("Qualifications"), Spacer(),
        DropdownButton(
            value: qualification,
            items: [
              DropdownMenuItem(
                child: Text("Bachelors Degree"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Nursing"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Medical Doctor"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Pharmacist"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Chemist"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Yahoo Boy"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                qualification = value;
              });
            }),

      ],
    );
  }

//programs function
  Widget _buildPrograms(){
    return Row(
      children: [
        Text("Programs"), Spacer(),
        DropdownButton(
            value: programs,
            items: [
              DropdownMenuItem(
                child: Text("Computer Engineering"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Nursing"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Medical Doctor"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Pharmacist"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Chemist"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Yahoo Boy"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                programs = value;
              });
            }),

      ],
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
                      buildFromTo(),
                      _buildQualification(),
                      _buildPrograms(),
                    ],
                  )),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                child: Row(
                  children: [
                    RaisedButton(
                      child: Text("Save and Exit", style: TextStyle(color: green, fontSize: 16)),
                      onPressed: () {
                        return  Alert(
                          context: context,
                          title: "Confirm",
                          desc: "By clicking yes your information will be saved",
                          buttons: [
                            DialogButton(child: Text("Yes"), onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => HomeScreen()));}, color: grey,),
                            DialogButton(child: Text("No, Continue", style: TextStyle(color: white),), onPressed: () {Navigator.pop(context);}, color: primary,)
                          ],
                        ).show();
                      },

                    ),

                    Spacer(),

                    RaisedButton(
                      child: Text("Continue", style: TextStyle(color: green, fontSize: 16)),
                      onPressed: () => {
                        if(!_formkey.currentState.validate()){

                        }else{
                          _formkey.currentState.save(),
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => DocumentScreen()))
                        }

                      },)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

}



