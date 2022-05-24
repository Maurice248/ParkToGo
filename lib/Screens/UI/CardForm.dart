import 'dart:html';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:parking_app/Screens/UI/CustomInputField.dart';
import 'package:path_provider/path_provider.dart';

class CardForm extends StatelessWidget {
  const CardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                backgroundColor: Color.fromARGB(255, 22, 22, 22),
                title: const Text(
                  'Add new parking lot',
                ),
                titleTextStyle: const TextStyle(
                  color: Color.fromARGB(255, 211, 210, 210),
                ),
                content: Container(
                  width: 300.0,
                  height: 230.0,
                  child: Column(children: <Widget>[
                    ElevatedButton(
                        onPressed: () async {
                          // final result = await FilePicker.platform.pickFiles();
                          // if (result == null) return;

                          // final file = result.files.first;

                          // await saveFile(file);
                        },
                        child: Text("upload file")),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter Location',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 175, 173, 173)),
                          labelText: 'Enter Location',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 175, 173, 173))),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Amount of space',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 175, 173, 173)),
                        labelText: 'Enter the the amount of space',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 175, 173, 173)),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ]),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Save'),
                    child: const Text('Save'),
                  ),
                ],
              ),
            ));
  }

//  Future<File> saveFile(PlatformFile file) async{
//    final appStorage = await getApplicationDocumentsDirectory();
//    final newFile = File('${appStorage.path}'/'${file.name}');

//    return File(file.path!).copy(newFile.path);
//  }

}
