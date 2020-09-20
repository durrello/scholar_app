import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/app_form/guardians.dart';
import 'package:scholar_app/screens/app_form/qualifications.dart';
import 'package:scholar_app/screens/home.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalInfoScreenState();
  }

}
class PersonalInfoScreenState extends State<PersonalInfoScreen> {

  String _name;
  String _phone;
  String _password;
  String _username;
  String _campus;
  String _email;
  String Profile_Title;
  String First_name;
  String Middle_name;
  String Last_name;
  String Gender;
  String Date_of_birth;
  String Birth_Place;
  String Nationality;
  String Blood_Group;
  String Mother_Tongue;
  String Religion;
  String Current_Qualification;


  String Present_address;
  String Permanent_address;
  String Country;
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


//date time picker


//  DateTime pickedDate;
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    pickedDate = DateTime.now();
//  }

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

  Widget _buildProfileTitle() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Profile Title'),
      validator: (String value){
        if(value.isEmpty){
          return 'Profile Title is required';
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

  Widget _buildFirstName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'First Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'First name is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildMiddleName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Middle Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'Middle name is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildLastName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Last Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'Last name is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildGender(){
    return Row(
      children: [
        Text("Gender"), Spacer(),
        DropdownButton(
            value: gender,
            items: [
              DropdownMenuItem(
                child: Text("Male"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Female"),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                gender = value;
              });
            }),

      ],
    );
  }





//  Widget _buildDateOfBirth(){
//    return Row(
//      children: [
//        Text("Date of Birth"),
//        Spacer(),
////             FlatButton(
////                 onPressed: (){
////                   _pickedDate(context);
////                 },
////             //    child: Text("${pickedDate.day}, ${pickedDate.month}, ${pickedDate.year}")),
////
////        Icon(Icons.arrow_drop_down),
////
////      ],
////    );
//  }

  DateTime _date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(DateTime.now().year-5),
        lastDate: DateTime(DateTime.now().year+5)
    );
    if( picked != null && picked != _date){
      print('Selected: ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }
  }


  _buildDateOfBirth(){
  return  Row(
        children: [
          Text("Date of Birth"),
          Spacer(),
          FlatButton(
              onPressed: () {_selectDate(context);},
              child: Text('${_date.day}, ${_date.month}, ${_date.year}')),
        ],
      );
  }


  Widget _buildBirthPlace() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Place of Birth'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Place of birth is required';
        }
      },
      onSaved: (String value){
        _password = value;
      },
    );  }

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

  Widget _buildBloodGroup(){
    return Row(
      children: [
        Text("Blood Group"), Spacer(),
        DropdownButton(
            value: blood_group,
            items: [
              DropdownMenuItem(
                child: Text("Group A"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Group B"),
                value: 2,
              ),

              DropdownMenuItem(
                child: Text("Group AB"),
                value: 3,
              ),

              DropdownMenuItem(
                child: Text("Group O"),
                value: 4,
              ),
            ],
            onChanged: (value) {
              setState(() {
                blood_group = value;
              });
            }),
      ],
    );
  }

  Widget _buildMotherTongue() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mother Tongue'),
      validator: (String value){
        if(value.isEmpty){
          return 'Mother Tongue is required';
        }
      },
      onSaved: (String value){
        _username = value;
      },
    );  }

  Widget _buildReligion(){
    return Row(
      children: [
        Text("Religion"), Spacer(),
        DropdownButton(
            value: religion,
            items: [
              DropdownMenuItem(
                child: Text("Christianity"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Islam"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Hinduism"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Buddhism"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Judaism"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Sikhism"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                religion = value;
              });
            }),

      ],
    );
  }

  Widget _buildQualification() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Current Qualification'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Qualification is needed is required';
        }
      },
      onSaved: (String value){
        _phone = value;
      },
    );  }


    //contact information
  Widget _buildPresentAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Present Address'),
      validator: (String value){
        if(value.isEmpty){
          return 'Present Address is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildPermanentAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Permanent Address'),
      validator: (String value){
        if(value.isEmpty){
          return 'Permanent Address is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildCountry(){
    return Row(
      children: [
        Text("Nationality"), Spacer(),
        DropdownButton(
            value: country,
            items: [
              DropdownMenuItem(
                child: Text("Cameroon"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Nigeria"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("France"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("China"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Italy"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Sweden"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                country = value;
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
      appBar: AppBar(title: Text("Personal Details"), backgroundColor: Hexcolor("#98C429"),),
      body: Container(
        margin: EdgeInsets.all(7),
        child: ListView(
          children: [
            Form(
                key: _formkey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Personal Details", style: TextStyle(fontWeight: FontWeight.bold),),
                    _buildProfileTitle(),
                    _buildFirstName(),
                    _buildMiddleName(),
                    _buildLastName(),
                    _buildGender(),
                    _buildDateOfBirth(),
                    _buildBirthPlace(),
                    _buildNationality(),
                    _buildBloodGroup(),
                    _buildMotherTongue(),
                    _buildReligion(),
                    _buildQualification(),
                    Divider(),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: Text("Contact Details", style: TextStyle(fontWeight: FontWeight.bold),)),
                    _buildPresentAddress(),
                    _buildPermanentAddress(),
                    _buildCountry(),
                    _buildStateRegion(),
                    _buildCity(),
                    _buildPhone(),
                    _buildMobile(),
                    _buildEmail()

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
                            builder: (BuildContext context) => GuardianInfoScreen()))
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



