
import 'package:flutter/material.dart';
import 'package:ochristos/data/data.dart';

AppBar appbar({bool isIcon = false, Function() onTap}) {
  return AppBar(
    elevation: 3,
    backgroundColor: Colors.blueGrey,

    leading: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child:  Images.logo,
      ),
    ),

  );
}
