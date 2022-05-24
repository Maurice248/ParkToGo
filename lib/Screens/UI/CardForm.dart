import 'package:flutter/material.dart';
import 'package:parking_app/Screens/UI/CustomInputField.dart';

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
                content: CustomInputField(
                    "Location",
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                    2.2),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ));
  }
}
