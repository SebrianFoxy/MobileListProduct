import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list_product/secure_storage/secure_storage.dart';

part 'check_auth_event.dart';
part 'check_auth_state.dart';
part 'check_auth_bloc.freezed.dart';

class CheckAuthBloc extends Bloc<CheckAuthEvent, CheckAuthState> {
  CheckAuthBloc() : super(const CheckAuthState.initial()) {
    on<_CheckID>(_checkID);
  }
  _checkID(_CheckID event, Emitter<CheckAuthState> emit) async {
    emit(const CheckAuthState.loading());
    try {
      String userID = await SecureStorage().readSecureData('id');
      if (userID.isNotEmpty){
        emit(const CheckAuthState.authenticated());
      }
      else {
        emit(const CheckAuthState.unauthenticated());
      }
    }catch (error){
      debugPrint('Error check auth: $error');
      emit(const CheckAuthState.unauthenticated());
    }
  }
}
