import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: "https://api.stripe.com/v1/",
      receiveDataWhenStatusError: true,
    ));
  }

  static getData(
      {required String url,
      Map<String, dynamic>? query,
      String? authorization}) async {
    dio.options.headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': authorization ?? "",
    };
    return await dio.get(url, queryParameters: query);
  }

  static postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? authorization,
    String? stripeService,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': "Bearer $authorization",
      'Stripe-Version': stripeService
    };
    return await dio.post(url, queryParameters: query, data: data);
  }

  static putData(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String? authorization}) async {
    dio.options.headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': "Bearer $authorization",
    };
    return await dio.put(url, queryParameters: query, data: data);
  }
}
