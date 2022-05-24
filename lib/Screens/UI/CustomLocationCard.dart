// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import '../ParkResScreen.dart';

enum Opt {cash, gcash}

// ignore: must_be_immutable
class CustomLocationCard extends StatelessWidget {
  int count;
  String place;
  String img;

  CustomLocationCard(
      {required this.place, required this.count, required this.img});

  @override
  Widget build(BuildContext context) {
     Opt _default = Opt.gcash;
    return
        // ignore: sized_box_for_whitespace
        Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: Colors.black.withOpacity(0.23),
          ),
        ],
      ),
      height: 350,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            //PaymentOpt();
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                backgroundColor: Color.fromARGB(255, 22, 22, 22),
                title: const Text(
                  'Choose Payment Options',
                  style: TextStyle(color: Color.fromARGB(255, 211, 210, 210))
                ),
                content: Container(
                  width: 300.0,
                  height: 230.0,
                  child: Column(
                    children: <Widget>[
                      RadioListTile(
                        title: const Text(
                          'Cash',
                          style: TextStyle(color: Color.fromARGB(255, 211, 210, 210))
                        ), 
                        value: Opt.gcash,
                        groupValue: _default,
                        onChanged: (Opt? value) {
                          //setState((){  
                            //_default = value;
                          //});
                        }

                      ),
                      RadioListTile(
                        title: const Text(
                          'GCASH',
                          style: TextStyle(color: Color.fromARGB(255, 211, 210, 210))
                        ),
                        value: Opt.cash,
                        groupValue: _default,
                        onChanged: (Opt? value) {
                          //setState((){  
                            //_default = value;
                          //});
                        }
                      )
                    ] 
                  ),
                  //child: Container
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, ParkResScreen.routeName),
                    child: const Text('Select'),
                  )
                ],
              )
              
            );
            //Navigator.pushNamed(context, ParkResScreen.routeName);
            debugPrint('Card tapped.');
          },
          child: Column(children: <Widget>[
            Container(
              height: 230,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text(place),
              subtitle: Text('Available Slots: $count'),
            ),
          ]),
        ),
      ),
    );
  }
}

class Listile {
}
