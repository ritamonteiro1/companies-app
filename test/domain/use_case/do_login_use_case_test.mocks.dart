// Mocks generated by Mockito 5.1.0 from annotations
// in ioasys_app/test/domain/use_case/do_login_use_case_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:ioasys_app/domain/model/user/user_model.dart' as _i5;
import 'package:ioasys_app/domain/model/user/user_tokens.dart' as _i2;
import 'package:ioasys_app/domain/repository/user/user_repository.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeUserTokens_0 extends _i1.Fake implements _i2.UserTokens {}

/// A class which mocks [UserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepository extends _i1.Mock implements _i3.UserRepository {
  MockUserRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.UserTokens> doLogin(_i5.UserModel? userModel) =>
      (super.noSuchMethod(Invocation.method(#doLogin, [userModel]),
              returnValue: Future<_i2.UserTokens>.value(_FakeUserTokens_0()))
          as _i4.Future<_i2.UserTokens>);
}
