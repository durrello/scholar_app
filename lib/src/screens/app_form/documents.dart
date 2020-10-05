import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported 3rd party
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

//imported screens
import 'package:scholar_app/src/screens/app_form/application_details.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/widgets/CustomHeader.dart';
import 'package:scholar_app/src/widgets/exit_continue_buttons.dart';
import 'package:scholar_app/src/commons.dart';

//imported models
import 'package:scholar_app/src/models/programs.dart';
import 'package:scholar_app/src/models/validation/doc_title.dart';

class DocumentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DocumentScreenState();
  }
}

class DocumentScreenState extends State<DocumentScreen> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String _fileName;
  String _path;
  Map<String, String> _paths;
  String extension;
  bool _loadingPath = false;
  bool _multiPick = false;
  bool _hasValidMime = false;
  FileType _pickingType;
  TextEditingController _controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => extension = _controller.text);
  }

  void _openFileExplorer() async {
    if (_pickingType != FileType.any || _hasValidMime) {
      setState(() => _loadingPath = true);
      try {
        if (_multiPick) {
          _path = null;
          _paths = await FilePicker.getMultiFilePath();
        } else {
          _paths = null;
          _path = await FilePicker.getFilePath();
        }
      } on PlatformException catch (e) {
        print("Unsupported operation" + e.toString());
      }
      if (!mounted) return;
      setState(() {
        _loadingPath = false;
        _fileName = _path != null
            ? _path.split('/').last
            : _paths != null ? _paths.keys.toString() : '...';
      });
    }
  }

  Widget _buildUploadFile() {
    return Row(
      children: [
        Text("Upload File"),
        Spacer(),
        Container(
          child: Center(
              child: Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                child: new RaisedButton(
                  onPressed: () => _openFileExplorer(),
                  child: new Text("Choose"),
                ),
              ),
              new Builder(
                builder: (BuildContext context) => _loadingPath
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: const CircularProgressIndicator())
                    : _path != null || _paths != null
                        ? new Container(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            height: MediaQuery.of(context).size.height * 0.50,
                            child: new Scrollbar(
                                child: new ListView.separated(
                              itemCount: _paths != null && _paths.isNotEmpty
                                  ? _paths.length
                                  : 1,
                              itemBuilder: (BuildContext context, int index) {
                                final bool isMultiPath =
                                    _paths != null && _paths.isNotEmpty;
                                final String name = 'File $index: ' +
                                    (isMultiPath
                                        ? _paths.keys.toList()[index]
                                        : _fileName ?? '...');
                                final path = isMultiPath
                                    ? _paths.values.toList()[index].toString()
                                    : _path;

                                return new ListTile(
                                  title: new Text(
                                    name,
                                  ),
                                  subtitle: new Text(path),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      new Divider(),
                            )),
                          )
                        : new Container(),
              ),
            ],
          )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Documents"),
          backgroundColor: primary,
        ),
        body: Container(
          margin: EdgeInsets.all(7),
          child: ListView(
            children: [
              Center(child: CustomHeader(text: "Application documents")),
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      DocumentTitleForm(),
                      Programs(),
                      _buildUploadFile(),
                    ],
                  )),

              Buttons(
                onPressed: () => {
                        if(!_formkey.currentState.validate()){

                        }else{
                          _formkey.currentState.save(),
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => ApplicationScreen()))
                        }
                      },
              )
            ],
          ),
        ));
  }
}
