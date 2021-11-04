import 'package:dio/dio.dart';
import 'package:ioasys_app/data/remote/user/model/user_request.dart';
import 'package:ioasys_app/domain/user/user_tokens.dart';

class UserRemoteDataSource {
  UserRemoteDataSource(
    this._dio,
  );

  final Dio _dio;
  static const String _baseUrl = 'https://empresas.ioasys.com.br/api/v1/';

  Future<UserTokens> doLogin(UserRequest userRequest) async {
    final response =
        await _dio.post('${_baseUrl}users/auth/sign_in', data: userRequest);
    final headers = response.headers;
    final accessToken = headers['access-token']![0];
    final client = headers['client']![0];
    final uid = headers['uid']![0];
    return UserTokens(accessToken, client, uid);
  }
}
