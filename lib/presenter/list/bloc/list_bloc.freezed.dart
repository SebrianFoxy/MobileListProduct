// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingList,
    required TResult Function(String listName) addList,
    required TResult Function(String listName) listNameChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingList,
    TResult? Function(String listName)? addList,
    TResult? Function(String listName)? listNameChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingList,
    TResult Function(String listName)? addList,
    TResult Function(String listName)? listNameChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingList value) loadingList,
    required TResult Function(_AddList value) addList,
    required TResult Function(_ListNameChange value) listNameChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingList value)? loadingList,
    TResult? Function(_AddList value)? addList,
    TResult? Function(_ListNameChange value)? listNameChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingList value)? loadingList,
    TResult Function(_AddList value)? addList,
    TResult Function(_ListNameChange value)? listNameChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEventCopyWith<$Res> {
  factory $ListEventCopyWith(ListEvent value, $Res Function(ListEvent) then) =
      _$ListEventCopyWithImpl<$Res, ListEvent>;
}

/// @nodoc
class _$ListEventCopyWithImpl<$Res, $Val extends ListEvent>
    implements $ListEventCopyWith<$Res> {
  _$ListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingListImplCopyWith<$Res> {
  factory _$$LoadingListImplCopyWith(
          _$LoadingListImpl value, $Res Function(_$LoadingListImpl) then) =
      __$$LoadingListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingListImplCopyWithImpl<$Res>
    extends _$ListEventCopyWithImpl<$Res, _$LoadingListImpl>
    implements _$$LoadingListImplCopyWith<$Res> {
  __$$LoadingListImplCopyWithImpl(
      _$LoadingListImpl _value, $Res Function(_$LoadingListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingListImpl implements _LoadingList {
  const _$LoadingListImpl();

  @override
  String toString() {
    return 'ListEvent.loadingList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingList,
    required TResult Function(String listName) addList,
    required TResult Function(String listName) listNameChange,
  }) {
    return loadingList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingList,
    TResult? Function(String listName)? addList,
    TResult? Function(String listName)? listNameChange,
  }) {
    return loadingList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingList,
    TResult Function(String listName)? addList,
    TResult Function(String listName)? listNameChange,
    required TResult orElse(),
  }) {
    if (loadingList != null) {
      return loadingList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingList value) loadingList,
    required TResult Function(_AddList value) addList,
    required TResult Function(_ListNameChange value) listNameChange,
  }) {
    return loadingList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingList value)? loadingList,
    TResult? Function(_AddList value)? addList,
    TResult? Function(_ListNameChange value)? listNameChange,
  }) {
    return loadingList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingList value)? loadingList,
    TResult Function(_AddList value)? addList,
    TResult Function(_ListNameChange value)? listNameChange,
    required TResult orElse(),
  }) {
    if (loadingList != null) {
      return loadingList(this);
    }
    return orElse();
  }
}

abstract class _LoadingList implements ListEvent {
  const factory _LoadingList() = _$LoadingListImpl;
}

/// @nodoc
abstract class _$$AddListImplCopyWith<$Res> {
  factory _$$AddListImplCopyWith(
          _$AddListImpl value, $Res Function(_$AddListImpl) then) =
      __$$AddListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listName});
}

/// @nodoc
class __$$AddListImplCopyWithImpl<$Res>
    extends _$ListEventCopyWithImpl<$Res, _$AddListImpl>
    implements _$$AddListImplCopyWith<$Res> {
  __$$AddListImplCopyWithImpl(
      _$AddListImpl _value, $Res Function(_$AddListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listName = null,
  }) {
    return _then(_$AddListImpl(
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddListImpl implements _AddList {
  const _$AddListImpl({required this.listName});

  @override
  final String listName;

  @override
  String toString() {
    return 'ListEvent.addList(listName: $listName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddListImpl &&
            (identical(other.listName, listName) ||
                other.listName == listName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddListImplCopyWith<_$AddListImpl> get copyWith =>
      __$$AddListImplCopyWithImpl<_$AddListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingList,
    required TResult Function(String listName) addList,
    required TResult Function(String listName) listNameChange,
  }) {
    return addList(listName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingList,
    TResult? Function(String listName)? addList,
    TResult? Function(String listName)? listNameChange,
  }) {
    return addList?.call(listName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingList,
    TResult Function(String listName)? addList,
    TResult Function(String listName)? listNameChange,
    required TResult orElse(),
  }) {
    if (addList != null) {
      return addList(listName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingList value) loadingList,
    required TResult Function(_AddList value) addList,
    required TResult Function(_ListNameChange value) listNameChange,
  }) {
    return addList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingList value)? loadingList,
    TResult? Function(_AddList value)? addList,
    TResult? Function(_ListNameChange value)? listNameChange,
  }) {
    return addList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingList value)? loadingList,
    TResult Function(_AddList value)? addList,
    TResult Function(_ListNameChange value)? listNameChange,
    required TResult orElse(),
  }) {
    if (addList != null) {
      return addList(this);
    }
    return orElse();
  }
}

abstract class _AddList implements ListEvent {
  const factory _AddList({required final String listName}) = _$AddListImpl;

  String get listName;
  @JsonKey(ignore: true)
  _$$AddListImplCopyWith<_$AddListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListNameChangeImplCopyWith<$Res> {
  factory _$$ListNameChangeImplCopyWith(_$ListNameChangeImpl value,
          $Res Function(_$ListNameChangeImpl) then) =
      __$$ListNameChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listName});
}

/// @nodoc
class __$$ListNameChangeImplCopyWithImpl<$Res>
    extends _$ListEventCopyWithImpl<$Res, _$ListNameChangeImpl>
    implements _$$ListNameChangeImplCopyWith<$Res> {
  __$$ListNameChangeImplCopyWithImpl(
      _$ListNameChangeImpl _value, $Res Function(_$ListNameChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listName = null,
  }) {
    return _then(_$ListNameChangeImpl(
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListNameChangeImpl implements _ListNameChange {
  const _$ListNameChangeImpl({required this.listName});

  @override
  final String listName;

  @override
  String toString() {
    return 'ListEvent.listNameChange(listName: $listName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListNameChangeImpl &&
            (identical(other.listName, listName) ||
                other.listName == listName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListNameChangeImplCopyWith<_$ListNameChangeImpl> get copyWith =>
      __$$ListNameChangeImplCopyWithImpl<_$ListNameChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingList,
    required TResult Function(String listName) addList,
    required TResult Function(String listName) listNameChange,
  }) {
    return listNameChange(listName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingList,
    TResult? Function(String listName)? addList,
    TResult? Function(String listName)? listNameChange,
  }) {
    return listNameChange?.call(listName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingList,
    TResult Function(String listName)? addList,
    TResult Function(String listName)? listNameChange,
    required TResult orElse(),
  }) {
    if (listNameChange != null) {
      return listNameChange(listName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingList value) loadingList,
    required TResult Function(_AddList value) addList,
    required TResult Function(_ListNameChange value) listNameChange,
  }) {
    return listNameChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingList value)? loadingList,
    TResult? Function(_AddList value)? addList,
    TResult? Function(_ListNameChange value)? listNameChange,
  }) {
    return listNameChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingList value)? loadingList,
    TResult Function(_AddList value)? addList,
    TResult Function(_ListNameChange value)? listNameChange,
    required TResult orElse(),
  }) {
    if (listNameChange != null) {
      return listNameChange(this);
    }
    return orElse();
  }
}

abstract class _ListNameChange implements ListEvent {
  const factory _ListNameChange({required final String listName}) =
      _$ListNameChangeImpl;

  String get listName;
  @JsonKey(ignore: true)
  _$$ListNameChangeImplCopyWith<_$ListNameChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListState {
  List<Map<String, dynamic>> get myListProduct =>
      throw _privateConstructorUsedError;
  String get listName => throw _privateConstructorUsedError;
  bool get isLoadingList => throw _privateConstructorUsedError;
  String? get listNameError => throw _privateConstructorUsedError;
  TextEditingController get listNameController =>
      throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListStateCopyWith<ListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res, ListState>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> myListProduct,
      String listName,
      bool isLoadingList,
      String? listNameError,
      TextEditingController listNameController,
      String? token});
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res, $Val extends ListState>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myListProduct = null,
    Object? listName = null,
    Object? isLoadingList = null,
    Object? listNameError = freezed,
    Object? listNameController = null,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      myListProduct: null == myListProduct
          ? _value.myListProduct
          : myListProduct // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingList: null == isLoadingList
          ? _value.isLoadingList
          : isLoadingList // ignore: cast_nullable_to_non_nullable
              as bool,
      listNameError: freezed == listNameError
          ? _value.listNameError
          : listNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      listNameController: null == listNameController
          ? _value.listNameController
          : listNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListStateImplCopyWith<$Res>
    implements $ListStateCopyWith<$Res> {
  factory _$$ListStateImplCopyWith(
          _$ListStateImpl value, $Res Function(_$ListStateImpl) then) =
      __$$ListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> myListProduct,
      String listName,
      bool isLoadingList,
      String? listNameError,
      TextEditingController listNameController,
      String? token});
}

/// @nodoc
class __$$ListStateImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListStateImpl>
    implements _$$ListStateImplCopyWith<$Res> {
  __$$ListStateImplCopyWithImpl(
      _$ListStateImpl _value, $Res Function(_$ListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myListProduct = null,
    Object? listName = null,
    Object? isLoadingList = null,
    Object? listNameError = freezed,
    Object? listNameController = null,
    Object? token = freezed,
  }) {
    return _then(_$ListStateImpl(
      myListProduct: null == myListProduct
          ? _value._myListProduct
          : myListProduct // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingList: null == isLoadingList
          ? _value.isLoadingList
          : isLoadingList // ignore: cast_nullable_to_non_nullable
              as bool,
      listNameError: freezed == listNameError
          ? _value.listNameError
          : listNameError // ignore: cast_nullable_to_non_nullable
              as String?,
      listNameController: null == listNameController
          ? _value.listNameController
          : listNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListStateImpl implements _ListState {
  const _$ListStateImpl(
      {required final List<Map<String, dynamic>> myListProduct,
      required this.listName,
      required this.isLoadingList,
      required this.listNameError,
      required this.listNameController,
      required this.token})
      : _myListProduct = myListProduct;

  final List<Map<String, dynamic>> _myListProduct;
  @override
  List<Map<String, dynamic>> get myListProduct {
    if (_myListProduct is EqualUnmodifiableListView) return _myListProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myListProduct);
  }

  @override
  final String listName;
  @override
  final bool isLoadingList;
  @override
  final String? listNameError;
  @override
  final TextEditingController listNameController;
  @override
  final String? token;

  @override
  String toString() {
    return 'ListState(myListProduct: $myListProduct, listName: $listName, isLoadingList: $isLoadingList, listNameError: $listNameError, listNameController: $listNameController, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._myListProduct, _myListProduct) &&
            (identical(other.listName, listName) ||
                other.listName == listName) &&
            (identical(other.isLoadingList, isLoadingList) ||
                other.isLoadingList == isLoadingList) &&
            (identical(other.listNameError, listNameError) ||
                other.listNameError == listNameError) &&
            (identical(other.listNameController, listNameController) ||
                other.listNameController == listNameController) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_myListProduct),
      listName,
      isLoadingList,
      listNameError,
      listNameController,
      token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      __$$ListStateImplCopyWithImpl<_$ListStateImpl>(this, _$identity);
}

abstract class _ListState implements ListState {
  const factory _ListState(
      {required final List<Map<String, dynamic>> myListProduct,
      required final String listName,
      required final bool isLoadingList,
      required final String? listNameError,
      required final TextEditingController listNameController,
      required final String? token}) = _$ListStateImpl;

  @override
  List<Map<String, dynamic>> get myListProduct;
  @override
  String get listName;
  @override
  bool get isLoadingList;
  @override
  String? get listNameError;
  @override
  TextEditingController get listNameController;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
