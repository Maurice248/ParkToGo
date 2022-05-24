// ignore: file_names
import 'package:flutter/material.dart';

class Records extends StatefulWidget {
  static const String routeName = "Records";

  const Records({Key? key}) : super(key: key);

  //const Home({Key? key}) : super(key: key);
  @override
  _RecordState createState() => _RecordState();
  }


class _RecordState extends State<Records> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('ParkToGo');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        backgroundColor: Colors.black,  
      ),  
      body:Center(
        child: Column(
          children: <Widget> [
            Container(
              margin: EdgeInsets.all(20),
              child: Table(  
                defaultColumnWidth: FixedColumnWidth(120.0),  
                border: TableBorder.all(  
                  color: Colors.black,  
                  style: BorderStyle.solid,  
                  width: 2
                ),  
                children: [  
                  TableRow( children: [  
                    Column(children:[Text('Username', style: TextStyle(fontSize: 20.0))]),  
                    Column(children:[Text('Location', style: TextStyle(fontSize: 20.0))]),  
                    Column(children:[Text('Time and Date', style: TextStyle(fontSize: 20.0))]),  
                  ]),
                  TableRow( children: [  
                      Column(children:[Text('alexrosa03')]),  
                      Column(children:[Text('Pier 5, 8W38+JXV, Cebu City, Cebu')]),  
                      Column(children:[Text('03/09/2022, 08:53pm')]),  
                      ]),  
                ],
              ),  
            )
          ]
         )
      )
    );
  }
}