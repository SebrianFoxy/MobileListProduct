part of 'list_bloc.dart';

@freezed
class ListEvent with _$ListEvent {
  const factory ListEvent.loadingList() = _LoadingList;

  const factory ListEvent.addList({
    required String listName,
  }) = _AddList;

  const factory ListEvent.listNameChange({
    required String listName,
  }) = _ListNameChange;
}