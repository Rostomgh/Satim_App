import 'package:dio/dio.dart';
import 'package:satim_hack/core/helper/ApiService.dart';
import 'package:satim_hack/core/helper/Enpoint.dart';
import 'package:satim_hack/features/Auth/data/domain/service/ServiceAuth.dart';
import 'package:satim_hack/features/Auth/data/model/modelUser.dart';

class AuthRepo implements ServiceAuth {
  final ApiService apiService = ApiService();

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await apiService.post(
      endPoint: Enpoint.login,
      query: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      try {
        print("Response data: ${response.data}");
        return UserModel.fromJson(response.data);
      } catch (e) {
        throw Exception('Failed to parse user data: $e');
      }
    } else {
      throw Exception('Login Failed: ${response.statusCode}');
    }
  }

  @override
  Future<UserModel> Signup(
      String username, String email, String password) async {
    try {
      final response = await apiService.post(
        endPoint: Enpoint.signup,
        query: { 'email': email, 'password': password,},
      );

      if (response.statusCode == 201) {
        return UserModel.fromJson(response.data);
      } else {
        throw Exception('Signup Failed: ${response.data}');
      }
    } catch (e) {
      print(e);

      throw Exception('Signup Failed: $e');
    }
  }
}
