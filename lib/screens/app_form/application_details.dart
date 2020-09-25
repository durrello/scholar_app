import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/home/home.dart';
import 'package:scholar_app/screens/preview.dart';

class ApplicationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ApplicationScreenState();
  }

}
class ApplicationScreenState extends State<ApplicationScreen> {

  //dropdown initial state
  int campus = 1;
  int program = 1;
  int profile = 1;
  int studyMode = 1;
  int nationality = 1;
  int religion = 1;
  int country = 1;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//gender function
  Widget _buildCampus(){
    return Row(
      children: [
        Text("Campus"), Spacer(),
        DropdownButton(
            value: campus,
            items: [
              DropdownMenuItem(
                child: Text("Campus A"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Campus B"),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                campus = value;
              });
            }),
      ],
    );
  }

  Widget _buildPrograms(){
    return Row(
      children: [
        Text("Program"), Spacer(),
        DropdownButton(
            value: program,
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
                program = value;
              });
            }),
      ],
    );
  }


  Widget _buildProfile(){
    return Row(
      children: [
        Text("Profile"), Spacer(),
        DropdownButton(
            value: profile,
            items: [
              DropdownMenuItem(
                child: Text("Profile A"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Profile B"),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                profile = value;
              });
            }),

      ],
    );
  }

  Widget _buildStudyMode(){
    return Row(
      children: [
        Text("Study Mode"), Spacer(),
        DropdownButton(
            value: studyMode,
            items: [
              DropdownMenuItem(
                child: Text("Distance learning"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("On site"),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                studyMode = value;
              });
            }),

      ],
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Application Details"), backgroundColor: Hexcolor("#98C429"),),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Application Details", style: TextStyle(fontWeight: FontWeight.bold),),
                      _buildCampus(),
                      _buildPrograms(),
                      _buildProfile(),
                      _buildStudyMode(),
                      _buildFrom_to(),
                    ],
                  )),

              Padding(
                padding: EdgeInsets.all(10),
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
                            DialogButton(child: Text("No, Continue", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,), onPressed: () {Navigator.pop(context);}, color: Hexcolor("#98C429"),)
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
                              builder: (BuildContext context) => PreviewScreen()))
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



