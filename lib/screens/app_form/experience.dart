import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/app_form/qualifications.dart';
import 'package:scholar_app/screens/home/home.dart';

class ExperienceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExperienceScreenState();
  }

}
class ExperienceScreenState extends State<ExperienceScreen> {

  String _company;
  String _role;
  String _wordDesc;

  //dropdown initial state
  int programs = 1;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//company validation function
  Widget _buildCompany() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Company'),
      validator: (String value){
        if(value.isEmpty && value.length < 6){
          return 'Company is required';
        }
      },
      onSaved: (String value){
        _company = value;
      },
    );
  }

//role validation function
  Widget _buildRole() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'What was/is your role'),
      validator: (String value){
        if(value.isEmpty){
          return 'Role is Required';
        }
      },
      onSaved: (String value){
        _role = value;
      },
    );
  }


//date and time function
  DateTime _dateFrom = DateTime.now();
  DateTime _dateTo = DateTime.now();

  Future<Null> _selectDateFrom(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _dateFrom,
        firstDate: DateTime(DateTime.now().year-5),
        lastDate: DateTime(DateTime.now().year+5)
    );
    if( picked != null && picked != _dateFrom){
      print('Selected: ${_dateFrom.toString()}');
      setState(() {
        _dateFrom = picked;
      });
    }
  }

  Future<Null> _selectDateTo(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _dateTo,
        firstDate: DateTime(DateTime.now().year-5),
        lastDate: DateTime(DateTime.now().year+5)
    );
    if( picked != null && picked != _dateTo){
      print('Selected: ${_dateTo.toString()}');
      setState(() {
        _dateTo = picked;
      });
    }
  }

  _buildFrom_to(){
    return  Row(
      children: [
        Text("From:", style: TextStyle(fontWeight: FontWeight.bold),),
        FlatButton(
            onPressed: () {_selectDateFrom(context);},
            child: Text('${_dateFrom.month}, ${_dateFrom.year}')),
        Spacer(),
        Text("To"),
        FlatButton(
            onPressed: () {_selectDateTo(context);},
            child: Text('${_dateTo.month}, ${_dateTo.year}')),
      ],
    );
  }

//work description validation function
  Widget _buildWork_desc() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Work description'),
      validator: (String value){
        if(value.isEmpty){
          return 'Description is required';
        }
      },
      onSaved: (String value){
        _wordDesc = value;
      },
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
        appBar: AppBar(title: Text("Work Experience"), backgroundColor: Hexcolor("#98C429"),),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Work Experience", style: TextStyle(fontWeight: FontWeight.bold),),
                      _buildCompany(),
                      _buildRole(),
                      _buildFrom_to(),
                      _buildWork_desc(),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
                          child: Text("Relation with Academics", style: TextStyle(fontWeight: FontWeight.bold),)),
                      _buildPrograms(),
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



