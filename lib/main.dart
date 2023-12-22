import 'package:flutter/material.dart';
import 'package:fluttergame/presentation/screen/home_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(

    ),
    home: HomeScreen()
  ));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello Word2'),
      ),
    );
  }
}
