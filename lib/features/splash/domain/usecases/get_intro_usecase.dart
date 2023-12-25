

import 'package:fluttergame/common/network/api_result.dart';
import 'package:fluttergame/common/usecase/usecase.dart';
import 'package:fluttergame/features/splash/data/models/intro.dart';
import 'package:fluttergame/features/splash/domain/repositories/intro_repository.dart';

class GetIntroUsecase implements UseCase<Intro, GetIntroParams>{

  final IntroRepository introRepository;
  const GetIntroUsecase(this.introRepository);

  @override
  Future<ApiResult<Intro>> call(GetIntroParams params) async  {
    return await introRepository.getIntro();
  }

}

class GetIntroParams {

  final String id;

  const GetIntroParams({required this.id});
}




