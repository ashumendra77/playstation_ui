import 'package:flutter/material.dart';
import './second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayStation(),
    );
  }
}

class PlayStation extends StatefulWidget {
  @override
  _PlayStationState createState() => _PlayStationState();
}

class _PlayStationState extends State<PlayStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/5.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 54, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "PlayStation 4",
                    style: TextStyle(fontSize: 37, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Browse all of the available bundle\nand find the PS4 that's right for you ",
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 420),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayStationDetail()),
                        );
                      },
                      color: Colors.redAccent,
                      elevation: 15,
                      child: Text(
                        "Shop System & bundles",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
