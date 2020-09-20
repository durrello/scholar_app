import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/app_form/qualifications.dart';
import 'package:scholar_app/screens/home.dart';

class DocumentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DocumentScreenState();
  }

}
class DocumentScreenState extends State<DocumentScreen> {

  String _name;
  String _phone;
  String _password;
  String _username;
  String _campus;
  String _email;
  String Title;
  String Programs;


  //gender dropdown initial state
  int qualification = 1;
  int programs = 1;




  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  //date picker
//  Future<Null> selectDate(BuildContext context) async {
//    DateTime _date = DateTime.now();
//    final DateTime picked = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(1980), lastDate: DateTime(2000));
//
//    if(picked != null && picked != _date){
//      setState(() {
//        _date = picked;
//      });
//      print(_date.toString());
//    }
//  }

  Widget _buildDocumentTitle() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Document Title'),
      validator: (String value){
        if(value.isEmpty && value.length < 6){
          return 'Title is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

//  Widget _buildDate(){
//    return Container(
//      child: IconButton(icon: Icon(Icons.alarm), onPressed: () => {selectDate(context)}),
//    );
//  }

  Widget _buildPrograms(){
    return Row(
      children: [
        Text("Academic Program"), Spacer(),
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

  Widget _buildUploadFile(){
    return Row(
      children: [
        Text("Upload File"), Spacer(),
        DropdownButton(
            value: programs,
            items: [
              DropdownMenuItem(
                child: Text("Computer Engineering"),
                value: 1,
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
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Documents"), backgroundColor: Hexcolor("#98C429"),),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDocumentTitle(),
                      _buildPrograms(),
                      _buildUploadFile(),

                    ],
                  )),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                child: Row(
                  children: [
                    RaisedButton(
                      child: Text("Save and Exit", style: TextStyle(color: Colors.green, fontSize: 16)),
                      onPressed: () {
                        return  Alert(
                          context: context,
                          title: "Confirm",
                          desc: "By clicking yes your information will be saved",
                          buttons: [
                            DialogButton(child: Text("Yes"), onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => HomeScreen()));}, color: Colors.grey,),
                            DialogButton(child: Text("No, Continue", style: TextStyle(color: Colors.white),), onPressed: () {Navigator.pop(context);}, color: Hexcolor("#98C429"),)
                          ],
                        ).show();
                      },

                    ),

                    Spacer(),

                    RaisedButton(
                      child: Text("Continue", style: TextStyle(color: Colors.green, fontSize: 16)),
                      onPressed: () => {
                        if(!_formkey.currentState.validate()){

                        }else{
                          _formkey.currentState.save(),
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => QualificationScreen()))
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



