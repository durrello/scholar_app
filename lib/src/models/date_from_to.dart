import 'package:flutter/material.dart';
import 'package:scholar_app/src/widgets/CustomText.dart';

class DateFromTo extends StatefulWidget {
  @override
  _DateFromToState createState() => _DateFromToState();
}

class _DateFromToState extends State<DateFromTo> {

  //date and time function
  DateTime _dateFrom = DateTime.now();
  DateTime _dateTo = DateTime.now();

  Future<Null> _selectDateFrom(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _dateFrom,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (picked != null && picked != _dateFrom) {
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
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (picked != null && picked != _dateTo) {
      print('Selected: ${_dateTo.toString()}');
      setState(() {
        _dateTo = picked;
      });
    }
  }

  dateFromTo() {
    return Row(
      children: [
        CustomText(
          text: "From:",
          weight: FontWeight.bold,
        ),
        FlatButton(
            onPressed: () {
              _selectDateFrom(context);
            },
            child: Text('${_dateFrom.day}, ${_dateFrom.month}, ${_dateFrom.year}')),
        Spacer(),
        CustomText(
          text: "To:",
          weight: FontWeight.bold,
        ),
        FlatButton(
            onPressed: () {
              _selectDateTo(context);
            },
            child: Text('${_dateTo.day}, ${_dateTo.month}, ${_dateTo.year}')),
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return dateFromTo();
  }
}