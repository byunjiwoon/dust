import 'package:dio/dio.dart' show DioException;
import 'package:fluttergame/common/network/api_result.dart';
import 'package:fluttergame/common/network/dio_exception.dart';

mixin RepositoryHelper<T> {
  Future<ApiResult<T>> checkItemsFailOrSuccess(
    Future<T> apiCallback,
  ) async {
    try {
      final T items = await apiCallback;
      return ApiResult.success(items);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }

  Future<ApiResult<bool>> checkItemFailOrSuccess(
    Future<bool> apiCallback,
  ) async {
    try {
      await apiCallback;
      return const ApiResult.success(true);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }
}
