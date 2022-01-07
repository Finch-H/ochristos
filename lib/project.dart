import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ochristos/widget/appbar.dart';

class project extends StatefulWidget {
  //const projet({Key? key}) : super(key: key);
  static const String idScreen = "project";

  @override
  _projectState createState() => _projectState();
}

class _projectState extends State<project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#004450"),
      appBar: appbar(
    CircleAvatar(
    backgroundColor: HexColor("#FECE17"),
    //HexColor("#238FC5"),

    radius: 20.0,
    ),
    ),
    );
  }
}
