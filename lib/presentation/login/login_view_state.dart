import 'package:ioasys_app/domain/model/user/user_tokens.dart';

abstract class LoginViewState {}

class GenericErrorState implements LoginViewState {}

class UnauthorizedErrorState implements LoginViewState {}

class NetworkErrorState implements LoginViewState {}

class SuccessState implements LoginViewState {
  SuccessState(
    this.userTokens,
  );

  final UserTokens userTokens;
}
