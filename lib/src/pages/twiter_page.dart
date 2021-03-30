import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwiterPage extends StatefulWidget {
  @override
  _TwiterPageState createState() => _TwiterPageState();
}

class _TwiterPageState extends State<TwiterPage> {
  bool animar=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: animar,
          from: 30,
          duration: Duration(seconds: 1),
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 40.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState(() {
          animar=true;
        });},
        child: FaIcon(FontAwesomeIcons.play),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
