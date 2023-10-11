import 'package:dio/dio.dart';

const APPLICATION_JSON = 'application/json';
const CONTENT_TYPE = 'content-type';
const ACCEPT = 'accept';
const AUTHORIZATION = 'Authorization';
const DEFAULT_LANGUAGE = 'language';

class DioManager {
  final Map<String, String> _mainheaders = {
    CONTENT_TYPE: APPLICATION_JSON,
    ACCEPT: '*/*',
    DEFAULT_LANGUAGE: 'en',
  };

  Dio dio = Dio(BaseOptions(
    baseUrl: "https://api.openweathermap.org",
    sendTimeout: Duration(seconds: 30),
    connectTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 30),
  ));

  Future<Response> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    return await dio.get(url,
        queryParameters: {
          ...?queryParameters,
          "appid": "bb8c3577635927b546c77ee6c31c6ea0",
          "units": "metric",
        },
        options: Options(
          headers: _mainheaders,
        ));
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParams,
  }) async {
    return await dio.post(url,
        data: data,
        queryParameters: queryParams,
        options: Options(
          headers: _mainheaders,
        ));
  }

  static String tempToken1 = "";
}
