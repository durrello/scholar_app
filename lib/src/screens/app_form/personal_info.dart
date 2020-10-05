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
import 'package:scholar_app/src/models/validation/city.dart';
import 'package:scholar_app/src/models/validation/email.dart';
import 'package:scholar_app/src/models/validation/mobile_phone_number.dart';
import 'package:scholar_app/src/models/validation/phone_number.dart';
import 'package:scholar_app/src/models/validation/state_region.dart';
import 'package:scholar_app/src/models/validation/std_current_address.dart';
import 'package:scholar_app/src/models/validation/std_first_name.dart';
import 'package:scholar_app/src/models/validation/std_last_name.dart';
import 'package:scholar_app/src/models/validation/std_middle_name.dart';
import 'package:scholar_app/src/models/validation/std_mother_tongue.dart';
import 'package:scholar_app/src/models/validation/std_permanent_add.dart';
import 'package:scholar_app/src/models/validation/std_place_of_birth.dart';
import 'package:scholar_app/src/models/validation/std_profile_title.dart';
import 'package:scholar_app/src/models/validation/std_qualification.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalInfoScreenState();
  }
}

class PersonalInfoScreenState extends State<PersonalInfoScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//date function
  DateTime _date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (picked != null && picked != _date) {
      print('Selected: ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }
  }

//date of birth validation function
  _buildDateOfBirth() {
    return Row(
      children: [
        Text("Date of Birth"),
        Spacer(),
        FlatButton(
            onPressed: () {
              _selectDate(context);
            },
            child: Text('${_date.day}, ${_date.month}, ${_date.year}')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Details"),
          backgroundColor: primary,
        ),
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
                      ProfileTilteForm(),
                      FirstNameForm(),
                      MiddleNameForm(),
                      LastNameForm(),
                      Gender(),
                      _buildDateOfBirth(),
                      PlaceOfBirthForm(),
                      Nationality(),
                      BloodGroup(),
                      MotherTongueForm(),
                      Religion(),
                      QualificationForm(),
                      Divider(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: CustomHeader(text: "Contact Details"),
                      ),
                      CurrentAddressForm(),
                      PermanentAddressForm(),
                      Country(),
                      StateRegionForm(),
                      CityForm(),
                      PhoneNumberForm(),
                      MobilePhoneNumberForm(),
                      EmailForm()
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
        ));
  }
}
