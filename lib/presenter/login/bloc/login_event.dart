part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.createUser({
    required String name,
  }) = _CreateUser;

  const factory LoginEvent.getUserName({
    required String name,
  }) = _GetUserName;

  const factory LoginEvent.joinToUser({
    required String token,
  }) = _JoinToUser;

  const factory LoginEvent.getToken({
    required String token,
  }) = _GetToken;

}
