part of 'list_bloc.dart';

@freezed
class ListState with _$ListState{
  const factory ListState({
    required List<Map<String, dynamic>> myListProduct,
    required String listName,
    required bool isLoadingList,
    required String? listNameError,
    required TextEditingController listNameController,
    required String? token,
  }) = _ListState;

  factory ListState.initial() {
    return ListState(
      myListProduct: [],
      listName: '',
      listNameController: TextEditingController(),
      isLoadingList: false,
      listNameError: null,
      token: '',
    );
  }
}