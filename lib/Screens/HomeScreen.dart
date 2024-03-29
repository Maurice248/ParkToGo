// ignore: file_names
import 'package:flutter/material.dart';
import 'package:parking_app/Screens/UI/CustomLocationCard.dart';

// import 'ParkResScreen.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";

  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('ParkToGo');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Location...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('ParkToGo');
                }
              });
            },
            icon: customIcon,
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              // ignore: prefer_const_constructors
              // decoration: BoxDecoration(
              //   color: Color.fromARGB(255, 239, 239, 239),
              //   borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30.0),
              //     topRight: Radius.circular(30.0),
              //   ),
              // ),
              child: SingleChildScrollView(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomLocationCard(
                        count: 9,
                        place: "Cebu port",
                        img: 'img/cebu-port.jpeg',
                      ),
                      CustomLocationCard(
                        count: 9,
                        place: "Cebu port",
                        img: 'img/cebu-port.jpeg',
                      ),
                      CustomLocationCard(
                        count: 9,
                        place: "Cebu port",
                        img: 'img/cebu-port.jpeg',
                      ),
                    ],
                  )
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
