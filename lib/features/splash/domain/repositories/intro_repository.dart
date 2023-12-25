


import 'package:fluttergame/common/network/api_result.dart';
import 'package:fluttergame/features/splash/data/models/intro.dart';

abstract class IntroRepository {

  Future<ApiResult<Intro>> getIntro();

}