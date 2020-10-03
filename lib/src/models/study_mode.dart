import 'package:flutter/material.dart';

class StudyMode extends StatefulWidget {
  @override
  _StudyModeState createState() => _StudyModeState();
}

class _StudyModeState extends State<StudyMode> {

    int studyMode = 1;

Widget buildStudyMode() {
    return Row(
      children: [
        Text("Study Mode"),
        Spacer(),
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
  @override
  Widget build(BuildContext context) {
    return buildStudyMode();
  }
}