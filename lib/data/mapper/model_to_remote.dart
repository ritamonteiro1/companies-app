import 'package:ioasys_app/data/remote/user/model/user_request.dart';
import 'package:ioasys_app/domain/user/user_model.dart';

extension UserModelToUserRequestExtensions on UserRequest {
  UserModel toUserRequest() => UserModel(
        email,
        password,
      );
}