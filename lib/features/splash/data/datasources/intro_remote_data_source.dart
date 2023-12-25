import 'package:fluttergame/common/network/api_config.dart';
import 'package:fluttergame/common/network/dio_client.dart';
import 'package:fluttergame/di.dart';
import 'package:fluttergame/features/splash/data/models/intro.dart';
import 'package:fluttergame/features/splash/data/models/stat.dart';

abstract class IntroRemoteDataSource {
  Future<Intro> getIntro();
}

class IntroRemoteDataSourceImpl implements IntroRemoteDataSource {
  final DioClient dioClient = getIt<DioClient>();

  @override
  Future<Intro> getIntro() async {
    Map<String, String> queryParameters = <String, String>{
      'serviceKey' : ApiConfig.serviceKey,
      'numOfRows' : '100',
      'pageNo' : '1',
      'returnType' : 'json',
      'itemCode': 'PM10',//'PM10',
      'dataGubun': 'HOUR',
      'searchCondition': 'WEEK',
    };
    var response = await dioClient.dio.get(ApiConfig.dust, queryParameters: queryParameters);
    var items = response.data['response']['body']['items'];
    var data =items.map<StatModel>(
          (item) => StatModel.fromJson(json: item),
    ).toList();

    return const Intro(name: "name") ;
  }
}
