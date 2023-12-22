import 'package:flutter/material.dart';
import 'package:fluttergame/component/main_app_bar.dart';
import 'package:fluttergame/component/main_drawer.dart';
import 'package:fluttergame/const/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        drawer: MainDrawer(),
        body: CustomScrollView(
          slivers: [
            MainAppBar()
          ],
        ));
  }
}
