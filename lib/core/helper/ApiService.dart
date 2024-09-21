import 'package:dio/dio.dart';
import 'package:satim_hack/core/helper/DioHelper.dart';

class ApiService {
  ApiService();

  Future<Response> get(
      {required String endPoint,
      Map<String, dynamic>? query,
      String? token}) async {
    final response = await DioHelper.getData(url: endPoint);
    return response;
  }

  Future<Response> post(
      {required String endPoint,
      Map<String, dynamic>? query,
      String? token}) async {
    final response = await DioHelper.postData(url: endPoint, data: query!);
    return response;
  }
}