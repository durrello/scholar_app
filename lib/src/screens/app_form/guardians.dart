import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/screens/app_form/experience.dart';
import 'package:scholar_app/src/screens/home/home.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';

class GuardianInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GuardianInfoScreenState();
  }

}
class GuardianInfoScreenState extends State<GuardianInfoScreen> {

  String name;
  String toWhom;
  String education;
  String occupation;
  String address;
  String stateRegion;
  String city;
  String phone;
  String mobile;
  String email;

  //gender dropdown initial state
  int nationality = 1;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//name validation function
  Widget _buildFullNames() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Full Names'),
      validator: (String value){
        if(value.isEmpty && value.length < 6){
          return 'Full Names is required';
        }
      },
      onSaved: (String value){
        name = value;
      },
    );
  }

//relation validation function
  Widget _buildWhomToYou() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Who to you?'),
      validator: (String value){
        if(value.isEmpty){
          return 'Required';
        }
      },
      onSaved: (String value){
        toWhom = value;
      },
    );
  }

//education validation function
  Widget _buildEducation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Education'),
      validator: (String value){
        if(value.isEmpty){
          return 'Education is required';
        }
      },
      onSaved: (String value){
        education = value;
      },
    );
  }

//occupation validation function
  Widget _buildOccupation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Occupation'),
      validator: (String value){
        if(value.isEmpty){
          return 'Occupation is required';
        }
      },
      onSaved: (String value){
        occupation = value;
      },
    );
  }

//address validation function
  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      validator: (String value){
        if(value.isEmpty){
          return 'Address is required';
        }
      },
      onSaved: (String value){
        address = value;
      },
    );
  }

//nationality function
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

//state or region validation function
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
        appBar: AppBar(title: Text("Guardian"), backgroundColor: primary,),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomHeader(text: "Guardian Details"),
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



