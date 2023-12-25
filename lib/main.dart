import 'package:flutter/material.dart';
import 'package:fluttergame/features/splash/presentation/bloc/intro_bloc.dart';
import 'package:fluttergame/features/splash/presentation/screens/intro_screen.dart';
import 'package:provider/provider.dart';

import 'di.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<IntroBloc>(create: (context) => getIt<IntroBloc>())
      ],
      child: MaterialApp(
        home: IntroScreen(),
      ),
    );
  }
}
