import 'package:dio/dio.dart';
import 'package:goldy/core/networking/api_constant.dart';

class DioHelper {
  static late Dio dio;
  static void init() {
    dio = Dio(
     BaseOptions(
      baseUrl: ApiConstant.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      )
    );
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(endPoint, queryParameters: query);
  }
}