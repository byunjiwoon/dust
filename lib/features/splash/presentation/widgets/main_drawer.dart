import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergame/core/colors.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: darkColor,
      child: ListView(
        children: [
          DrawerHeader(child: Text(
            '지역 선택'
          ,style: TextStyle(
            fontSize: 30.0,
            color: primaryColor
          ),))
        ],
      ),
    );
  }
}
