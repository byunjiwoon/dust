import 'package:dio/dio.dart';
import 'package:fluttergame/common/network/dio_client.dart';
import 'package:fluttergame/features/splash/data/datasources/intro_remote_data_source.dart';
import 'package:fluttergame/features/splash/data/repositories/intro_repository_impl.dart';
import 'package:fluttergame/features/splash/domain/repositories/intro_repository.dart';
import 'package:fluttergame/features/splash/domain/usecases/get_intro_usecase.dart';
import 'package:fluttergame/features/splash/presentation/bloc/intro_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory(
      () => IntroBloc(getIntroUseCase: getIt<GetIntroUsecase>()));

  getIt.registerLazySingleton(() => GetIntroUsecase(getIt<IntroRepository>()));
  getIt.registerLazySingleton<IntroRepository>(
      () => IntroRepositoryImpl(remoteDataSource: getIt())
  );

  getIt.registerLazySingleton<IntroRemoteDataSource>(
      () => IntroRemoteDataSourceImpl()
  );

  //Dio
  getIt.registerLazySingleton<DioClient>(() => DioClient(getIt<Dio>()));
  getIt.registerLazySingleton<Dio>(() => Dio());
}
