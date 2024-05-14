part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.loadingProducts() = _LoadingProducts;

  const factory OrderEvent.getListName({
    required String listName,
    required String listNamedId,
  }) = _GetListName;

  const factory OrderEvent.addProductNameChange({
    required String addProductNameChange,
  }) = _AddProductNameChange;

  const factory OrderEvent.addProductCountChange({
    required String addProductCountChange,
  }) = _AddProductCountChange;

  const factory OrderEvent.addProduct() = _AddProduct;

  const factory OrderEvent.finishList() = _FinishList;

  const factory OrderEvent.loadingFinishProducts() = _LoadingFinishProducts;
}