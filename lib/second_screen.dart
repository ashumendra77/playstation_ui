import 'package:flutter/material.dart';

class PlayStationDetail extends StatefulWidget {
  @override
  _PlayStationDetailState createState() => _PlayStationDetailState();
}

class _PlayStationDetailState extends State<PlayStationDetail> {
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
                  image: AssetImage("images/7.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 54, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "PlayStation\nMove(2-pack)",
                    style: TextStyle(fontSize: 37, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "The most exciting and intuitive\ngaming experiences in VR titles.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 400),
                    child: RaisedButton(
                      onPressed: () => debugPrint("pess"),
                      color: Colors.blueAccent,
                      elevation: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80.0, right: 80),
                        child: Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white),
                        ),
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
