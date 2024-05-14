import 'package:bloc/bloc.dart';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list_product/secure_storage/secure_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderState.initial()) {
   on<_LoadingProducts>(_loadingProducts);
   on<_GetListName>(_getListName);
   on<_AddProductNameChange>(_addProductNameChange);
   on<_AddProductCountChange>(_addProductCountChange);
   on<_AddProduct>(_addProduct);
   on<_FinishList>(_finishList);
   on<_LoadingFinishProducts>(_loadingFinishList);
  }

  _loadingProducts(_LoadingProducts event, Emitter<OrderState> emit) async {
    emit(state.copyWith(isLoadingProducts: true));
    try{
      String idUser = await SecureStorage().readSecureData('id');
      List<Map<String, dynamic>> myProducts = await Supabase.instance.client.from('product').select().eq('user_id', idUser).eq('list_name', state.listName);
      emit(state.copyWith(myProducts: myProducts));
      print(state.myProducts);
    }catch(e){
      debugPrint('LoadingProducts error: $e');
    }
    emit(state.copyWith(isLoadingProducts: false));
  }

  _getListName(_GetListName event, Emitter<OrderState> emit) {
    emit(state.copyWith(listName: event.listName));
    emit(state.copyWith(listNamedId: event.listNamedId));
  }

  _addProductNameChange(_AddProductNameChange event, Emitter<OrderState> emit) {
    emit(state.copyWith(addProductNameChange: event.addProductNameChange));
    print('product: ${event.addProductNameChange}');
  }

  _addProductCountChange(_AddProductCountChange event, Emitter<OrderState> emit) {
    emit(state.copyWith(addProductCountChange: event.addProductCountChange));
  }

  _addProduct(_AddProduct event, Emitter<OrderState> emit) async {
    try{
      String idUser = await SecureStorage().readSecureData('id');
      await Supabase.instance.client.from('product').insert(
          { 'product': state.addProductNameChange,
            'price': '',
            'count': state.addProductCountChange,
            'user_id': idUser,
            'list_name': state.listName,
            'purchased': false,
            'list_name_id': state.listNamedId,
          });
      add(const OrderEvent.loadingProducts());
    } catch(e){
      debugPrint('AddProductError: $e');
    }
  }

  _finishList(_FinishList event, Emitter<OrderState> emit) async {
    try{
      String idUser = await SecureStorage().readSecureData('id');
      await Supabase.instance.client.from('list_name').delete().eq('list_name', state.listName);
      await Supabase.instance.client.from('story_list_name').insert(
          { 'list_name': state.listName,
            'user_id': idUser,
            'list_name_id': state.listNamedId,
          });
      for (var item in state.myProducts){
        await Supabase.instance.client.from('story_product').insert(
            { 'product': item['product'],
              'price': item['price'],
              'count': item['count'],
              'user_id': item['user_id'],
              'list_name': item['list_name'],
              'purchased': item['purchased'],
              'list_name_id': item['list_name_id'],
            });
        await Supabase.instance.client.from('product').delete()
            .eq('product', item['product'])
            .eq('price', item['price']).eq('count', item['count'])
            .eq('user_id', item['user_id'])
            .eq('list_name', item['list_name'])
            .eq('purchased', item['purchased'])
            .eq('list_name_id', item['list_name_id']);
      }
      emit(state.copyWith(finishList: true));
      emit(state.copyWith(finishList: false));
    }catch (e){
      debugPrint('FinishList Error: $e');
    }
  }

  _loadingFinishList(_LoadingFinishProducts event, Emitter<OrderState> emit) async {
    emit(state.copyWith(isLoadingProducts: true));
    try{
      String idUser = await SecureStorage().readSecureData('id');
      List<Map<String, dynamic>> myFinishProducts = await Supabase.instance.client.from('story_product').select().eq('user_id', idUser).eq('list_name', state.listName).eq('list_name_id', state.listNamedId);
      emit(state.copyWith(myFinishProducts: myFinishProducts));
      print(state.myFinishProducts);
      print(state.listNamedId);
      print(state.listName);
      print(idUser);
    }catch (e){
      debugPrint('LoadingFinishList');
    }
    emit(state.copyWith(isLoadingProducts: false));
  }
}
