part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState({
    required String name,
    required String token,
    required bool isLoadingLogin,
    required bool isAuthSuccess,
    required String? errorName,
    required String? errorToken,
  }) = _LoginState;

  factory LoginState.initial() {
    return const LoginState(
      name: '',
      token:'',
      isLoadingLogin: false,
      isAuthSuccess: false,
      errorName: null,
      errorToken: null,
    );
  }
}
