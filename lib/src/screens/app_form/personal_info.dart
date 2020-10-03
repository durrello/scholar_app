import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported screens
import 'package:scholar_app/src/screens/app_form/guardians.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';
import 'package:scholar_app/src/widgets/exit_continue_buttons.dart';

//imported models
import 'package:scholar_app/src/models/blood_group.dart';
import 'package:scholar_app/src/models/country.dart';
import 'package:scholar_app/src/models/gender.dart';
import 'package:scholar_app/src/models/nationality.dart';
import 'package:scholar_app/src/models/religion.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalInfoScreenState();
  }

}
class PersonalInfoScreenState extends State<PersonalInfoScreen> {

  String profileTitle;
  String firstName;
  String middleName;
  String lastName;
  String birthPlace;
  String motherTongue;
  String qualification;
  String presentAddress;
  String permanentAddress;
  String stateRegion;
  String city;
  String phone;
  String mobile;
  String email;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//profile validation function
  Widget _buildProfileTitle() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Profile Title'),
      validator: (String value){
        if(value.isEmpty){
          return 'Profile Title is required';
        }
      },
      onSaved: (String value){
        profileTitle = value;
      },
    );
  }

//first name validation function
  Widget _buildFirstName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'First Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'First name is required';
        }
      },
      onSaved: (String value){
        firstName = value;
      },
    );
  }

//middle validation function
  Widget _buildMiddleName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Middle Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'Middle name is required';
        }
      },
      onSaved: (String value){
        middleName = value;
      },
    );
  }

//last name validation function
  Widget _buildLastName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Last Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'Last name is required';
        }
      },
      onSaved: (String value){
        lastName = value;
      },
    );
  }



//date function
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

//date of birth validation function
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

//place of birth validation function
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
        birthPlace = value;
      },
    );  }

//mother tongue validation function
  Widget _buildMotherTongue() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mother Tongue'),
      validator: (String value){
        if(value.isEmpty){
          return 'Mother Tongue is required';
        }
      },
      onSaved: (String value){
        motherTongue = value;
      },
    );  }


//qualification validation function
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
        qualification = value;
      },
    );  }

//address validation function
  Widget _buildPresentAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Present Address'),
      validator: (String value){
        if(value.isEmpty){
          return 'Present Address is required';
        }
      },
      onSaved: (String value){
        presentAddress = value;
      },
    );
  }

//permanent address validation function
  Widget _buildPermanentAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Permanent Address'),
      validator: (String value){
        if(value.isEmpty){
          return 'Permanent Address is required';
        }
      },
      onSaved: (String value){
        permanentAddress = value;
      },
    );
  }



//state or city validation function
  Widget _buildStateRegion() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'State or Region'),
      validator: (String value){
        if(value.isEmpty){
          return 'State/Region is required';
        }
      },
      onSaved: (String value){
        stateRegion = value;
      },
    );
  }

//city validation function
  Widget _buildCity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'City'),
      validator: (String value){
        if(value.isEmpty){
          return 'City is required';
        }
      },
      onSaved: (String value){
        city = value;
      },
    );
  }

//phone validation function
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
        phone = value;
      },
    );  }

//mobile validation function
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
        mobile = value;
      },
    );  }

//email validation function
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
        email = value;
      },
    );  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal Details"), backgroundColor: primary,),
      body: Container(
        margin: EdgeInsets.all(7),
        child: ListView(
          children: [
            Form(
                key: _formkey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomHeader(text: "Personal Details"),
                    _buildProfileTitle(),
                    _buildFirstName(),
                    _buildMiddleName(),
                    _buildLastName(),
                    Gender(),
                    _buildDateOfBirth(),
                    _buildBirthPlace(),
                    Nationality(),
                    BloodGroup(),
                    _buildMotherTongue(),
                    Religion(),
                    _buildQualification(),
                    Divider(),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: CustomHeader(text: "Contact Details"),),
                    _buildPresentAddress(),
                    _buildPermanentAddress(),
                    Country(),
                    _buildStateRegion(),
                    _buildCity(),
                    _buildPhone(),
                    _buildMobile(),
                    _buildEmail()

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
                                    GuardianInfoScreen())),
                          }
                      }),
          ],
        ),
      )
    );
  }

}



