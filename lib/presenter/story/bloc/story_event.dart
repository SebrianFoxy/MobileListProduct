part of 'story_bloc.dart';

@freezed
class StoryEvent with _$StoryEvent {
  const factory StoryEvent.loadingStoryProducts() = _LoadingStoryProducts;

  const factory StoryEvent.getListName({
    required String listName,
    required String listNamedId,
  }) = _GetListName;
}