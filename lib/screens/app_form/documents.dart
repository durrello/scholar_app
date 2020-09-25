import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/app_form/application_details.dart';
import 'package:scholar_app/screens/home/home.dart';

class DocumentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DocumentScreenState();
  }

}
class DocumentScreenState extends State<DocumentScreen> {

  String _title;

  //dropdown initial state
  int programs = 1;
  int upload = 1;




  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildDocumentTitle() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Document Title'),
      validator: (String value){
        if(value.isEmpty && value.length < 6){
          return 'Title is required';
        }
      },
      onSaved: (String value){
        _title = value;
      },
    );
  }

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
            value: upload,
            items: [
              DropdownMenuItem(
                child: Text("Computer Engineering"),
                value: 1,
              ),

            ],
            onChanged: (value) {
              setState(() {
                upload = value;
              });
            }),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
                              builder: (BuildContext context) => ApplicationScreen()))
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



