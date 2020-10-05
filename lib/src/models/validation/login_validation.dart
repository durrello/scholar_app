import 'package:flutter/foundation.dart';
import 'package:scholar_app/src/models/validation/validation_item.dart';

class LoginValidation with ChangeNotifier {

  ValidationItem _password = ValidationItem(null, null);


//getters
  ValidationItem get password => _password;


  //setters
  void changePassword(String value){
    if(value.length >= 8){
      _password = ValidationItem(value, null);
    }else{
      _password = ValidationItem(null, "Password must be at least 8 characters");
    }
    notifyListeners();
  }

  
}