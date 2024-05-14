part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState{
  const factory OrderState({
    required List<Map<String, dynamic>> myProducts,
    required bool isLoadingProducts,
    required String listName,
    required String listNamedId,
    required bool finishList,
    required bool isChecked,
    required String addProductNameChange,
    required String addProductCountChange,
    required List<Map<String, dynamic>> myFinishProducts,
  }) = _OrderState;

  factory OrderState.initial() {
    return const OrderState(
      myProducts: [],
      myFinishProducts: [],
      isLoadingProducts: false,
      finishList: false,
      listName: '',
      listNamedId: '',
      isChecked: false,
      addProductNameChange: '',
      addProductCountChange: '',
    );
  }
}
