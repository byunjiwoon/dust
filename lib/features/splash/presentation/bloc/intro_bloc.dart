import 'package:flutter/foundation.dart';
import 'package:fluttergame/common/bloc/generic_bloc_state.dart';
import 'package:fluttergame/common/network/api_result.dart';
import 'package:fluttergame/features/splash/data/models/intro.dart';
import 'package:fluttergame/features/splash/domain/usecases/get_intro_usecase.dart';
import 'package:fluttergame/features/splash/presentation/bloc/intro_event.dart';
import 'package:rxdart/rxdart.dart';

@immutable
class IntroBloc {
  factory IntroBloc({required getIntroUseCase}) {

    final BehaviorSubject<IntroFetched> subject = BehaviorSubject<IntroFetched>();

    final Stream<GenericBlocState<Intro>> stream = subject.switchMap(
          (IntroFetched input) {
        return Rx.fromCallable<ApiResult<Intro>>(
              () async => await getIntroUseCase.call(
                GetIntroParams(id: "")
              ),
        ).asyncMap<GenericBlocState<Intro>>((result) {
          return result.when(
            success: (Intro items) async {
            return GenericBlocState.success(items);
            },
            failure: (String failure) async {
              return GenericBlocState.failure(failure);
            },
          );
        });
      },
    ).startWith(GenericBlocState.loading());


    return IntroBloc._(
      getIntroUseCase: getIntroUseCase,
      stream: stream,
      sink: subject
    );
  }

  //Use cases
  final GetIntroUsecase getIntroUseCase;

  // read-only properties
  final Stream<GenericBlocState<Intro>> stream;

  // write-only properties
  final Sink<IntroFetched> sink;



  //Private constructor
  const IntroBloc._({
    required this.getIntroUseCase,
    required this.stream,
    required this.sink
  });

}
