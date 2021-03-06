import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  const UserModel(
    this.email,
    this.password,
  );

  final String email;
  final String password;

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
