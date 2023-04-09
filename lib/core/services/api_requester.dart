import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiClient {
  static const String url = 'http://161.35.29.179:8080/';

  Future<Dio> initDio({bool? isToken}) async {
    return Dio(
      BaseOptions(
        baseUrl: url,
        responseType: ResponseType.json,
        receiveTimeout: 30000,
        connectTimeout: 30000,
      ),
    );
  }

  Future<Response> toGet(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Dio dio = await initDio();
    return dio.get(url, queryParameters: queryParameters);
  }

  Future<Response> toPost(
    String url, {
    Map<String, dynamic>? queryParameters,
    required Map<String, dynamic> body,
  }) async {
    Dio dio = await initDio();
    return dio.post(url, queryParameters: queryParameters, data: body);
  }
}
