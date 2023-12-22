import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergame/const/colors.dart';

class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ts = TextStyle(
        color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w700);

    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 500,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                Text(
                  '리서련',
                  style: ts,
                ),
                Text(DateTime.now().toString(),
                    style: ts.copyWith(fontSize: 20.0)),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('asset/img/profile.png'),
                const SizedBox(
                  height: 20,
                ),
                Text('보통',
                    style:
                        ts.copyWith(fontSize: 40.0, fontWeight: FontWeight.w700))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
