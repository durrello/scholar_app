// import 'dart:async';
// import 'dart:core';

// import 'package:provider/provider.dart';
// import 'package:rxdart/rxdart.dart';

// class PersonalDetailBloc {
//   final _name = BehaviorSubject<String>();
//   final _phone = BehaviorSubject<String>();

//   //getter
//   Stream<String> get name => _name.stream.transform(validateName);
//   Stream<double> get phone => _phone.stream.transform(validatePhone);
//   Stream<bool> get valid => Rx.combineLatest2(name, phone, (name, phone) => true);

//   //setter
//   Function(String) get changeName => _name.sink.add;
//   Function(String) get changePhone => _phone.sink.add;

//   dispose() {
//     _name.close();
//     _phone.close();
//   }

//   //validation
//   final validateName =
//       StreamTransformer<String,String>.fromHandlers(handleData: (name, sink) {
//     if (name.length < 4) {
//       sink.addError("Name must be atleast 4 charactes");
//     } else {
//       sink.add(name);
//     }
//   });

//   final validatePhone =
//       StreamTransformer<String,double>.fromHandlers(handleData: (phone, sink) {
//     try {
//       sink.add(double.parse(phone));
//     } catch (error) {
//       sink.addError("Value must be a number");
//     }
//   });



// //submit function

// submit(){
//   print("Submitted");
// }
// }
