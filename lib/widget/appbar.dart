
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ochristos/data/data.dart';

AppBar appbar(CircleAvatar circleAvatar, {bool isIcon = false, Function() onTap}) {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  bool drawerOpen = true;
  return AppBar(
    elevation: 3,
    backgroundColor: HexColor("#004450"),

  //   leading: GestureDetector(
  //     onTap: (){
  //       scaffoldKey
  //           .currentState.openDrawer();
  //     },
  //     //onTap: () {
  //     //   if (drawerOpen) {
  //     //     scaffoldKey.currentState.openDrawer();
  //     //   } else {
  //     //    // resetApp();
  //     //   }
  //     // },
  //
  //
  //
  //     child: Padding(
  //       padding: const EdgeInsets.all(1.0),
  // child: Icon(
  //     (drawerOpen) ? Icons.menu : Icons.close,
  //     color:  HexColor("#FECE17"),
  //   ),
  //     ),
  //   ),
        title:Images.logo,toolbarHeight: 50.0,
    centerTitle: true,

  );
}
