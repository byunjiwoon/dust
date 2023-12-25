import 'package:flutter/material.dart';
import 'package:fluttergame/common/bloc/generic_bloc_state.dart';
import 'package:fluttergame/features/splash/data/models/intro.dart';
import 'package:fluttergame/features/splash/presentation/bloc/intro_bloc.dart';
import 'package:fluttergame/features/splash/presentation/bloc/intro_event.dart';
import 'package:fluttergame/features/splash/presentation/widgets/main_app_bar.dart';
import 'package:fluttergame/features/splash/presentation/widgets/main_drawer.dart';
import 'package:fluttergame/core/colors.dart';
import 'package:provider/provider.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    context.read<IntroBloc>().sink.add(IntroFetched());

    return Scaffold(
        backgroundColor: primaryColor,
        drawer: MainDrawer(),
        body: StreamBuilder<GenericBlocState<Intro>>(
    stream: context.read<IntroBloc>().stream,
    builder: (BuildContext context, AsyncSnapshot<GenericBlocState<Intro>> snapshot) {
    return const Text("Unknown state");
    },
    )
    );
  }
}
