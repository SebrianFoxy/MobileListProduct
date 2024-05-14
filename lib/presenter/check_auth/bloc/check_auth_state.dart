part of 'check_auth_bloc.dart';

@freezed
class CheckAuthState with _$CheckAuthState {
  const factory CheckAuthState.initial() = Initial;
  const factory CheckAuthState.loading() = Loading;
  const factory CheckAuthState.authenticated() = Authenticated;
  const factory CheckAuthState.unauthenticated() = Unauthenticated;
}
