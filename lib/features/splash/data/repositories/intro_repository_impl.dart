
import 'package:fluttergame/common/network/api_result.dart';
import 'package:fluttergame/common/repository/repository_helper.dart';
import 'package:fluttergame/features/splash/data/datasources/intro_remote_data_source.dart';
import 'package:fluttergame/features/splash/data/models/intro.dart';
import 'package:fluttergame/features/splash/domain/repositories/intro_repository.dart';

class IntroRepositoryImpl extends IntroRepository with RepositoryHelper<Intro> {

  final IntroRemoteDataSource remoteDataSource;

  IntroRepositoryImpl({required this.remoteDataSource});



  @override
  Future<ApiResult<Intro>> getIntro() async{
    return checkItemsFailOrSuccess(remoteDataSource.getIntro());
  }}