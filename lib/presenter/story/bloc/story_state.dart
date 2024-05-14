part of 'story_bloc.dart';

@freezed
class StoryState with _$StoryState{
  const factory StoryState({
    required List<Map<String, dynamic>> myStoryProducts,
    required bool isLoadingStoryList,
    required String listName,
    required String listNamedId,
  }) = _StoryState;

  factory StoryState.initial() {
    return const StoryState(
      myStoryProducts: [],
      isLoadingStoryList: false,
      listName: '',
      listNamedId: '',
    );
  }
}
