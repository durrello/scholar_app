import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported screens
import 'package:scholar_app/src/screens/app_form/experience.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';
import 'package:scholar_app/src/widgets/exit_continue_buttons.dart';

//imported models
import 'package:scholar_app/src/models/nationality.dart';
import 'package:scholar_app/src/models/validation/address.dart';
import 'package:scholar_app/src/models/validation/city.dart';
import 'package:scholar_app/src/models/validation/email.dart';
import 'package:scholar_app/src/models/validation/guardian_education.dart';
import 'package:scholar_app/src/models/validation/guardian_name.dart';
import 'package:scholar_app/src/models/validation/mobile_phone_number.dart';
import 'package:scholar_app/src/models/validation/occupation.dart';
import 'package:scholar_app/src/models/validation/phone_number.dart';
import 'package:scholar_app/src/models/validation/state_region.dart';
import 'package:scholar_app/src/models/validation/who_to_you.dart';


class GuardianInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GuardianInfoScreenState();
  }

}
class GuardianInfoScreenState extends State<GuardianInfoScreen> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
                    children: [
                      CustomHeader(text: "Guardian Details"),
                      GuardianNameForm(),
                      WhomToYouForm(),
                      EducationForm(),
                      OccupationForm(),
                      AddressForm(),
                      Nationality(),
                      StateRegionForm(),
                      CityForm(),
                      PhoneNumberForm(),
                      MobilePhoneNumberForm(),
                      EmailForm(),
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
                                    ExperienceScreen())),
                          }
                      }),
            ],
          ),
        )
    );
  }

}



