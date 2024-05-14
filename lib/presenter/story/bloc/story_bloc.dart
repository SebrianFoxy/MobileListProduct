import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list_product/secure_storage/secure_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'story_event.dart';
part 'story_state.dart';
part 'story_bloc.freezed.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc() : super(StoryState.initial()) {
    on<_LoadingStoryProducts>(_loadingStory);
  }
  _loadingStory(_LoadingStoryProducts event, Emitter<StoryState> emit) async {
    emit(state.copyWith(isLoadingStoryList: true));
    try{
      String idUser = await SecureStorage().readSecureData('id');
      List<Map<String, dynamic>> myStoryProducts = await Supabase.instance.client.from('story_list_name').select().eq('user_id', idUser);
      emit(state.copyWith(myStoryProducts: myStoryProducts));
    }catch (e){
      debugPrint('LoadingStory Error: $e');
    }
    emit(state.copyWith(isLoadingStoryList: false));
  }
}
