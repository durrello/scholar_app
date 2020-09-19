import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/app_form/experience.dart';
import 'package:scholar_app/screens/app_form/qualifications.dart';
import 'package:scholar_app/screens/home.dart';

class GuardianInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GuardianInfoScreenState();
  }

}
class GuardianInfoScreenState extends State<GuardianInfoScreen> {

  String _name;
  String _phone;
  String _password;
  String _username;
  String _campus;
  String _email;
  String Full_Names;
  String Who_to_you;
  String Education;
  String Occupation;
  String Address;
  String Nationality;
  String State_Region;
  String City;
  String Phone;
  String Mobile;
  String Personal_Email;


  //gender dropdown initial state
  String dropdownValue = 'One';
  int gender = 1;
  int nationality = 1;
  int blood_group = 1;
  int religion = 1;
  int country = 1;




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

  Widget _buildFullNames() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Full Names'),
      validator: (String value){
        if(value.isEmpty && value.length < 6){
          return 'Full Names is required';
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

  Widget _buildWhomToYou() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Who to you?'),
      validator: (String value){
        if(value.isEmpty){
          return 'Required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildEducation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Education'),
      validator: (String value){
        if(value.isEmpty){
          return 'Education is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildOccupation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Occupation'),
      validator: (String value){
        if(value.isEmpty){
          return 'Occupation is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      validator: (String value){
        if(value.isEmpty){
          return 'Address is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildNationality(){
    return Row(
      children: [
        Text("Nationality"), Spacer(),
        DropdownButton(
            value: nationality,
            items: [
              DropdownMenuItem(
                child: Text("Cameroonian"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Malian"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Nigerian"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("American"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Asian"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Swedish"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                nationality = value;
              });
            }),

      ],
    );
  }

  Widget _buildStateRegion() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'State or Region'),
      validator: (String value){
        if(value.isEmpty){
          return 'State/Region is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildCity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'City'),
      validator: (String value){
        if(value.isEmpty){
          return 'City is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildPhone() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone Number'),
      keyboardType: TextInputType.phone,
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Phone Number is required';
        }
      },
      onSaved: (String value){
        _phone = value;
      },
    );  }

  Widget _buildMobile() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mobile Phone Number'),
      keyboardType: TextInputType.phone,
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Mobile Number is required';
        }
      },
      onSaved: (String value){
        _phone = value;
      },
    );  }


  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: (String value){
        if(value.isEmpty){
          return 'Email is required';
        }
        if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
          return 'Please Enter a valid Email';
        } return null;
      },
      onSaved: (String value){
        _email = value;
      },
    );  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Guardian"), backgroundColor: Hexcolor("#98C429"),),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Guardian Details", style: TextStyle(fontWeight: FontWeight.bold),),
                      _buildFullNames(),
                      _buildWhomToYou(),
                      _buildEducation(),
                      _buildOccupation(),
                      _buildAddress(),
                      _buildNationality(),
                      _buildStateRegion(),
                      _buildCity(),
                      _buildPhone(),
                      _buildMobile(),
                      _buildEmail(),
                    ],
                  )),

              Padding(
                padding: EdgeInsets.all(40),
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
                              builder: (BuildContext context) => ExperienceScreen()))
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



