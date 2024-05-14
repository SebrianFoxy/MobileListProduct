import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:math';
import 'dart:convert';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:list_product/secure_storage/secure_storage.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<_CreateUser>(_createUser);
    on<_GetUserName>(_getUserName);
    on<_JoinToUser>(_joinToUser);
    on<_GetToken>(_getToken);
  }
  _createUser(_CreateUser event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoadingLogin: true));
    try {
      List name = await Supabase.instance.client.from('user').select().eq('username', event.name);
      if (name.isEmpty && event.name.isNotEmpty){
        emit(state.copyWith(errorName: null));

        var random = Random.secure();
        var values = List<int>.generate(8, (i) => random.nextInt(256));
        var bytes = values;
        var inviteToken = base64Url.encode(bytes);

        await Supabase.instance.client.from('user').insert({'username': event.name, 'invite_token': inviteToken});
        List<Map<String, dynamic>> userID = await Supabase.instance.client.from('user').select('id').eq('username', event.name);
        await SecureStorage().writeSecureData('id', userID[0]['id'].toString());
        await SecureStorage().writeSecureData('token', inviteToken);

        emit(state.copyWith(isAuthSuccess: true));
        emit(state.copyWith(isAuthSuccess: false));
      }
      else if (event.name.isEmpty){
        emit(state.copyWith(errorName: 'Поле не может быть пустым!'));
      }
      else{
        emit(state.copyWith(errorName: 'Такой пользователь уже существует!'));
        emit(state.copyWith(name: ''));
      }
    }catch (e){
      debugPrint("LoginError: $e");
    }
    emit(state.copyWith(isLoadingLogin: false));
  }

  _getUserName(_GetUserName event, Emitter<LoginState> emit) async {
    emit(state.copyWith(name: event.name.toLowerCase().trim()));
    if (state.errorName != null) {
      emit(state.copyWith(errorName: null));
    }
  }

  _joinToUser(_JoinToUser event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoadingLogin: true));
    try{
      List userID = await Supabase.instance.client.from('user').select('id').eq('invite_token', event.token);
      if (userID.isNotEmpty && event.token.isNotEmpty){
        await SecureStorage().writeSecureData('id', userID[0]['id'].toString());
        await SecureStorage().writeSecureData('token', event.token);
        emit(state.copyWith(isAuthSuccess: true));
        emit(state.copyWith(isAuthSuccess: false));
      }
      else if (event.token.isEmpty){
        emit(state.copyWith(errorToken: 'Поле не может быть пустым!'));
      }
      else{
        emit(state.copyWith(errorToken: 'Такого токена не существует!'));
        emit(state.copyWith(token: ''));
      }
    }catch (error) {
      debugPrint('Join to user error: $error');
    }
    emit(state.copyWith(isLoadingLogin: false));
  }

  _getToken(_GetToken event, Emitter<LoginState> emit) async {
    emit(state.copyWith(token: event.token.trim()));
    if (state.errorToken != null) {
      emit(state.copyWith(errorToken: null));
    }
  }
}
