// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingStoryProducts,
    required TResult Function(String listName, String listNamedId) getListName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingStoryProducts,
    TResult? Function(String listName, String listNamedId)? getListName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingStoryProducts,
    TResult Function(String listName, String listNamedId)? getListName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingStoryProducts value) loadingStoryProducts,
    required TResult Function(_GetListName value) getListName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingStoryProducts value)? loadingStoryProducts,
    TResult? Function(_GetListName value)? getListName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingStoryProducts value)? loadingStoryProducts,
    TResult Function(_GetListName value)? getListName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryEventCopyWith<$Res> {
  factory $StoryEventCopyWith(
          StoryEvent value, $Res Function(StoryEvent) then) =
      _$StoryEventCopyWithImpl<$Res, StoryEvent>;
}

/// @nodoc
class _$StoryEventCopyWithImpl<$Res, $Val extends StoryEvent>
    implements $StoryEventCopyWith<$Res> {
  _$StoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStoryProductsImplCopyWith<$Res> {
  factory _$$LoadingStoryProductsImplCopyWith(_$LoadingStoryProductsImpl value,
          $Res Function(_$LoadingStoryProductsImpl) then) =
      __$$LoadingStoryProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStoryProductsImplCopyWithImpl<$Res>
    extends _$StoryEventCopyWithImpl<$Res, _$LoadingStoryProductsImpl>
    implements _$$LoadingStoryProductsImplCopyWith<$Res> {
  __$$LoadingStoryProductsImplCopyWithImpl(_$LoadingStoryProductsImpl _value,
      $Res Function(_$LoadingStoryProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStoryProductsImpl implements _LoadingStoryProducts {
  const _$LoadingStoryProductsImpl();

  @override
  String toString() {
    return 'StoryEvent.loadingStoryProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStoryProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingStoryProducts,
    required TResult Function(String listName, String listNamedId) getListName,
  }) {
    return loadingStoryProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingStoryProducts,
    TResult? Function(String listName, String listNamedId)? getListName,
  }) {
    return loadingStoryProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingStoryProducts,
    TResult Function(String listName, String listNamedId)? getListName,
    required TResult orElse(),
  }) {
    if (loadingStoryProducts != null) {
      return loadingStoryProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingStoryProducts value) loadingStoryProducts,
    required TResult Function(_GetListName value) getListName,
  }) {
    return loadingStoryProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingStoryProducts value)? loadingStoryProducts,
    TResult? Function(_GetListName value)? getListName,
  }) {
    return loadingStoryProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingStoryProducts value)? loadingStoryProducts,
    TResult Function(_GetListName value)? getListName,
    required TResult orElse(),
  }) {
    if (loadingStoryProducts != null) {
      return loadingStoryProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadingStoryProducts implements StoryEvent {
  const factory _LoadingStoryProducts() = _$LoadingStoryProductsImpl;
}

/// @nodoc
abstract class _$$GetListNameImplCopyWith<$Res> {
  factory _$$GetListNameImplCopyWith(
          _$GetListNameImpl value, $Res Function(_$GetListNameImpl) then) =
      __$$GetListNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listName, String listNamedId});
}

/// @nodoc
class __$$GetListNameImplCopyWithImpl<$Res>
    extends _$StoryEventCopyWithImpl<$Res, _$GetListNameImpl>
    implements _$$GetListNameImplCopyWith<$Res> {
  __$$GetListNameImplCopyWithImpl(
      _$GetListNameImpl _value, $Res Function(_$GetListNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listName = null,
    Object? listNamedId = null,
  }) {
    return _then(_$GetListNameImpl(
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
      listNamedId: null == listNamedId
          ? _value.listNamedId
          : listNamedId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetListNameImpl implements _GetListName {
  const _$GetListNameImpl({required this.listName, required this.listNamedId});

  @override
  final String listName;
  @override
  final String listNamedId;

  @override
  String toString() {
    return 'StoryEvent.getListName(listName: $listName, listNamedId: $listNamedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListNameImpl &&
            (identical(other.listName, listName) ||
                other.listName == listName) &&
            (identical(other.listNamedId, listNamedId) ||
                other.listNamedId == listNamedId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listName, listNamedId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListNameImplCopyWith<_$GetListNameImpl> get copyWith =>
      __$$GetListNameImplCopyWithImpl<_$GetListNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingStoryProducts,
    required TResult Function(String listName, String listNamedId) getListName,
  }) {
    return getListName(listName, listNamedId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingStoryProducts,
    TResult? Function(String listName, String listNamedId)? getListName,
  }) {
    return getListName?.call(listName, listNamedId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingStoryProducts,
    TResult Function(String listName, String listNamedId)? getListName,
    required TResult orElse(),
  }) {
    if (getListName != null) {
      return getListName(listName, listNamedId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingStoryProducts value) loadingStoryProducts,
    required TResult Function(_GetListName value) getListName,
  }) {
    return getListName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingStoryProducts value)? loadingStoryProducts,
    TResult? Function(_GetListName value)? getListName,
  }) {
    return getListName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingStoryProducts value)? loadingStoryProducts,
    TResult Function(_GetListName value)? getListName,
    required TResult orElse(),
  }) {
    if (getListName != null) {
      return getListName(this);
    }
    return orElse();
  }
}

abstract class _GetListName implements StoryEvent {
  const factory _GetListName(
      {required final String listName,
      required final String listNamedId}) = _$GetListNameImpl;

  String get listName;
  String get listNamedId;
  @JsonKey(ignore: true)
  _$$GetListNameImplCopyWith<_$GetListNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoryState {
  List<Map<String, dynamic>> get myStoryProducts =>
      throw _privateConstructorUsedError;
  bool get isLoadingStoryList => throw _privateConstructorUsedError;
  String get listName => throw _privateConstructorUsedError;
  String get listNamedId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoryStateCopyWith<StoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryStateCopyWith<$Res> {
  factory $StoryStateCopyWith(
          StoryState value, $Res Function(StoryState) then) =
      _$StoryStateCopyWithImpl<$Res, StoryState>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> myStoryProducts,
      bool isLoadingStoryList,
      String listName,
      String listNamedId});
}

/// @nodoc
class _$StoryStateCopyWithImpl<$Res, $Val extends StoryState>
    implements $StoryStateCopyWith<$Res> {
  _$StoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myStoryProducts = null,
    Object? isLoadingStoryList = null,
    Object? listName = null,
    Object? listNamedId = null,
  }) {
    return _then(_value.copyWith(
      myStoryProducts: null == myStoryProducts
          ? _value.myStoryProducts
          : myStoryProducts // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      isLoadingStoryList: null == isLoadingStoryList
          ? _value.isLoadingStoryList
          : isLoadingStoryList // ignore: cast_nullable_to_non_nullable
              as bool,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
      listNamedId: null == listNamedId
          ? _value.listNamedId
          : listNamedId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryStateImplCopyWith<$Res>
    implements $StoryStateCopyWith<$Res> {
  factory _$$StoryStateImplCopyWith(
          _$StoryStateImpl value, $Res Function(_$StoryStateImpl) then) =
      __$$StoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> myStoryProducts,
      bool isLoadingStoryList,
      String listName,
      String listNamedId});
}

/// @nodoc
class __$$StoryStateImplCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res, _$StoryStateImpl>
    implements _$$StoryStateImplCopyWith<$Res> {
  __$$StoryStateImplCopyWithImpl(
      _$StoryStateImpl _value, $Res Function(_$StoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myStoryProducts = null,
    Object? isLoadingStoryList = null,
    Object? listName = null,
    Object? listNamedId = null,
  }) {
    return _then(_$StoryStateImpl(
      myStoryProducts: null == myStoryProducts
          ? _value._myStoryProducts
          : myStoryProducts // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      isLoadingStoryList: null == isLoadingStoryList
          ? _value.isLoadingStoryList
          : isLoadingStoryList // ignore: cast_nullable_to_non_nullable
              as bool,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
      listNamedId: null == listNamedId
          ? _value.listNamedId
          : listNamedId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoryStateImpl implements _StoryState {
  const _$StoryStateImpl(
      {required final List<Map<String, dynamic>> myStoryProducts,
      required this.isLoadingStoryList,
      required this.listName,
      required this.listNamedId})
      : _myStoryProducts = myStoryProducts;

  final List<Map<String, dynamic>> _myStoryProducts;
  @override
  List<Map<String, dynamic>> get myStoryProducts {
    if (_myStoryProducts is EqualUnmodifiableListView) return _myStoryProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myStoryProducts);
  }

  @override
  final bool isLoadingStoryList;
  @override
  final String listName;
  @override
  final String listNamedId;

  @override
  String toString() {
    return 'StoryState(myStoryProducts: $myStoryProducts, isLoadingStoryList: $isLoadingStoryList, listName: $listName, listNamedId: $listNamedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._myStoryProducts, _myStoryProducts) &&
            (identical(other.isLoadingStoryList, isLoadingStoryList) ||
                other.isLoadingStoryList == isLoadingStoryList) &&
            (identical(other.listName, listName) ||
                other.listName == listName) &&
            (identical(other.listNamedId, listNamedId) ||
                other.listNamedId == listNamedId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_myStoryProducts),
      isLoadingStoryList,
      listName,
      listNamedId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryStateImplCopyWith<_$StoryStateImpl> get copyWith =>
      __$$StoryStateImplCopyWithImpl<_$StoryStateImpl>(this, _$identity);
}

abstract class _StoryState implements StoryState {
  const factory _StoryState(
      {required final List<Map<String, dynamic>> myStoryProducts,
      required final bool isLoadingStoryList,
      required final String listName,
      required final String listNamedId}) = _$StoryStateImpl;

  @override
  List<Map<String, dynamic>> get myStoryProducts;
  @override
  bool get isLoadingStoryList;
  @override
  String get listName;
  @override
  String get listNamedId;
  @override
  @JsonKey(ignore: true)
  _$$StoryStateImplCopyWith<_$StoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
