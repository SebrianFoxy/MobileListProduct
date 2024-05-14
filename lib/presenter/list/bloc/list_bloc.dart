import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:list_product/secure_storage/secure_storage.dart';

part 'list_event.dart';
part 'list_state.dart';
part 'list_bloc.freezed.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc() : super(ListState.initial()) {
    on<_LoadingList>(_loadingList);
    on<_AddList>(_addList);
    on<_ListNameChange>(_listNameChange);
  }

  _loadingList(_LoadingList event, Emitter<ListState> emit) async {
    emit(state.copyWith(isLoadingList: true));
    try {
      String idUser = await SecureStorage().readSecureData('id');
      List<Map<String, dynamic>> myListProduct = await Supabase.instance.client.from('list_name').select().eq('user_id', idUser);
      emit(state.copyWith(myListProduct: myListProduct));
      String myToken = await SecureStorage().readSecureData('token');
      emit(state.copyWith(token: myToken));
    } catch (e) {
      debugPrint('LoadingListError: $e');
    }
    emit(state.copyWith(isLoadingList: false));
  }

  _addList(_AddList event, Emitter<ListState> emit) async {
    print('кнопка работает');
    try {
      if (state.listName.isNotEmpty) {
        String idUser = await SecureStorage().readSecureData('id');
        List<Map<String, dynamic>> checkList = await Supabase.instance.client.from('list_name').select().eq('list_name', state.listName.toString()).eq('user_id', idUser);
        if (checkList.isEmpty){
          await Supabase.instance.client.from('list_name').insert({'list_name': event.listName, 'user_id': idUser});
          emit(state.copyWith(
              listNameController: TextEditingController(),
              listName: '')
          );
          add(const ListEvent.loadingList());
        }
        else {
          emit(state.copyWith(
              listNameError: 'Список с таким названием уже создан!',
              listNameController: TextEditingController(),
              listName: ''
            )
          );
        }
      }
      else if (state.listName.isEmpty) {
        emit(state.copyWith(listNameError: 'Поле не может быть пустым!'));
      }
      else {
        emit(state.copyWith(listNameError: 'Произошла ошибка!'));
      }
    } catch (e) {
      debugPrint('addListError: $e');
    }
  }

  _listNameChange(_ListNameChange event, Emitter<ListState> emit) async {
    emit(state.copyWith(listName: event.listName.toLowerCase().trim()));
    if (state.listNameError != null) {
      emit(state.copyWith(listNameError: null));
    }
  }
}
