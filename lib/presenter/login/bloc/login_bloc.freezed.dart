// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) createUser,
    required TResult Function(String name) getUserName,
    required TResult Function(String token) joinToUser,
    required TResult Function(String token) getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? createUser,
    TResult? Function(String name)? getUserName,
    TResult? Function(String token)? joinToUser,
    TResult? Function(String token)? getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? createUser,
    TResult Function(String name)? getUserName,
    TResult Function(String token)? joinToUser,
    TResult Function(String token)? getToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUserName value) getUserName,
    required TResult Function(_JoinToUser value) joinToUser,
    required TResult Function(_GetToken value) getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUserName value)? getUserName,
    TResult? Function(_JoinToUser value)? joinToUser,
    TResult? Function(_GetToken value)? getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUserName value)? getUserName,
    TResult Function(_JoinToUser value)? joinToUser,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl value, $Res Function(_$CreateUserImpl) then) =
      __$$CreateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl _value, $Res Function(_$CreateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserImpl implements _CreateUser {
  const _$CreateUserImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'LoginEvent.createUser(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) createUser,
    required TResult Function(String name) getUserName,
    required TResult Function(String token) joinToUser,
    required TResult Function(String token) getToken,
  }) {
    return createUser(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? createUser,
    TResult? Function(String name)? getUserName,
    TResult? Function(String token)? joinToUser,
    TResult? Function(String token)? getToken,
  }) {
    return createUser?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? createUser,
    TResult Function(String name)? getUserName,
    TResult Function(String token)? joinToUser,
    TResult Function(String token)? getToken,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUserName value) getUserName,
    required TResult Function(_JoinToUser value) joinToUser,
    required TResult Function(_GetToken value) getToken,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUserName value)? getUserName,
    TResult? Function(_JoinToUser value)? joinToUser,
    TResult? Function(_GetToken value)? getToken,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUserName value)? getUserName,
    TResult Function(_JoinToUser value)? joinToUser,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements LoginEvent {
  const factory _CreateUser({required final String name}) = _$CreateUserImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserNameImplCopyWith<$Res> {
  factory _$$GetUserNameImplCopyWith(
          _$GetUserNameImpl value, $Res Function(_$GetUserNameImpl) then) =
      __$$GetUserNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetUserNameImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GetUserNameImpl>
    implements _$$GetUserNameImplCopyWith<$Res> {
  __$$GetUserNameImplCopyWithImpl(
      _$GetUserNameImpl _value, $Res Function(_$GetUserNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetUserNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserNameImpl implements _GetUserName {
  const _$GetUserNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'LoginEvent.getUserName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserNameImplCopyWith<_$GetUserNameImpl> get copyWith =>
      __$$GetUserNameImplCopyWithImpl<_$GetUserNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) createUser,
    required TResult Function(String name) getUserName,
    required TResult Function(String token) joinToUser,
    required TResult Function(String token) getToken,
  }) {
    return getUserName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? createUser,
    TResult? Function(String name)? getUserName,
    TResult? Function(String token)? joinToUser,
    TResult? Function(String token)? getToken,
  }) {
    return getUserName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? createUser,
    TResult Function(String name)? getUserName,
    TResult Function(String token)? joinToUser,
    TResult Function(String token)? getToken,
    required TResult orElse(),
  }) {
    if (getUserName != null) {
      return getUserName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUserName value) getUserName,
    required TResult Function(_JoinToUser value) joinToUser,
    required TResult Function(_GetToken value) getToken,
  }) {
    return getUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUserName value)? getUserName,
    TResult? Function(_JoinToUser value)? joinToUser,
    TResult? Function(_GetToken value)? getToken,
  }) {
    return getUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUserName value)? getUserName,
    TResult Function(_JoinToUser value)? joinToUser,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) {
    if (getUserName != null) {
      return getUserName(this);
    }
    return orElse();
  }
}

abstract class _GetUserName implements LoginEvent {
  const factory _GetUserName({required final String name}) = _$GetUserNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$GetUserNameImplCopyWith<_$GetUserNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinToUserImplCopyWith<$Res> {
  factory _$$JoinToUserImplCopyWith(
          _$JoinToUserImpl value, $Res Function(_$JoinToUserImpl) then) =
      __$$JoinToUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$JoinToUserImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$JoinToUserImpl>
    implements _$$JoinToUserImplCopyWith<$Res> {
  __$$JoinToUserImplCopyWithImpl(
      _$JoinToUserImpl _value, $Res Function(_$JoinToUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$JoinToUserImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JoinToUserImpl implements _JoinToUser {
  const _$JoinToUserImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'LoginEvent.joinToUser(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinToUserImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinToUserImplCopyWith<_$JoinToUserImpl> get copyWith =>
      __$$JoinToUserImplCopyWithImpl<_$JoinToUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) createUser,
    required TResult Function(String name) getUserName,
    required TResult Function(String token) joinToUser,
    required TResult Function(String token) getToken,
  }) {
    return joinToUser(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? createUser,
    TResult? Function(String name)? getUserName,
    TResult? Function(String token)? joinToUser,
    TResult? Function(String token)? getToken,
  }) {
    return joinToUser?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? createUser,
    TResult Function(String name)? getUserName,
    TResult Function(String token)? joinToUser,
    TResult Function(String token)? getToken,
    required TResult orElse(),
  }) {
    if (joinToUser != null) {
      return joinToUser(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUserName value) getUserName,
    required TResult Function(_JoinToUser value) joinToUser,
    required TResult Function(_GetToken value) getToken,
  }) {
    return joinToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUserName value)? getUserName,
    TResult? Function(_JoinToUser value)? joinToUser,
    TResult? Function(_GetToken value)? getToken,
  }) {
    return joinToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUserName value)? getUserName,
    TResult Function(_JoinToUser value)? joinToUser,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) {
    if (joinToUser != null) {
      return joinToUser(this);
    }
    return orElse();
  }
}

abstract class _JoinToUser implements LoginEvent {
  const factory _JoinToUser({required final String token}) = _$JoinToUserImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$JoinToUserImplCopyWith<_$JoinToUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTokenImplCopyWith<$Res> {
  factory _$$GetTokenImplCopyWith(
          _$GetTokenImpl value, $Res Function(_$GetTokenImpl) then) =
      __$$GetTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$GetTokenImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GetTokenImpl>
    implements _$$GetTokenImplCopyWith<$Res> {
  __$$GetTokenImplCopyWithImpl(
      _$GetTokenImpl _value, $Res Function(_$GetTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$GetTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTokenImpl implements _GetToken {
  const _$GetTokenImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'LoginEvent.getToken(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTokenImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTokenImplCopyWith<_$GetTokenImpl> get copyWith =>
      __$$GetTokenImplCopyWithImpl<_$GetTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) createUser,
    required TResult Function(String name) getUserName,
    required TResult Function(String token) joinToUser,
    required TResult Function(String token) getToken,
  }) {
    return getToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? createUser,
    TResult? Function(String name)? getUserName,
    TResult? Function(String token)? joinToUser,
    TResult? Function(String token)? getToken,
  }) {
    return getToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? createUser,
    TResult Function(String name)? getUserName,
    TResult Function(String token)? joinToUser,
    TResult Function(String token)? getToken,
    required TResult orElse(),
  }) {
    if (getToken != null) {
      return getToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUserName value) getUserName,
    required TResult Function(_JoinToUser value) joinToUser,
    required TResult Function(_GetToken value) getToken,
  }) {
    return getToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUserName value)? getUserName,
    TResult? Function(_JoinToUser value)? joinToUser,
    TResult? Function(_GetToken value)? getToken,
  }) {
    return getToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUserName value)? getUserName,
    TResult Function(_JoinToUser value)? joinToUser,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) {
    if (getToken != null) {
      return getToken(this);
    }
    return orElse();
  }
}

abstract class _GetToken implements LoginEvent {
  const factory _GetToken({required final String token}) = _$GetTokenImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$GetTokenImplCopyWith<_$GetTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  String get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isLoadingLogin => throw _privateConstructorUsedError;
  bool get isAuthSuccess => throw _privateConstructorUsedError;
  String? get errorName => throw _privateConstructorUsedError;
  String? get errorToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String name,
      String token,
      bool isLoadingLogin,
      bool isAuthSuccess,
      String? errorName,
      String? errorToken});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? token = null,
    Object? isLoadingLogin = null,
    Object? isAuthSuccess = null,
    Object? errorName = freezed,
    Object? errorToken = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingLogin: null == isLoadingLogin
          ? _value.isLoadingLogin
          : isLoadingLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthSuccess: null == isAuthSuccess
          ? _value.isAuthSuccess
          : isAuthSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorName: freezed == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorToken: freezed == errorToken
          ? _value.errorToken
          : errorToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String token,
      bool isLoadingLogin,
      bool isAuthSuccess,
      String? errorName,
      String? errorToken});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? token = null,
    Object? isLoadingLogin = null,
    Object? isAuthSuccess = null,
    Object? errorName = freezed,
    Object? errorToken = freezed,
  }) {
    return _then(_$LoginStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingLogin: null == isLoadingLogin
          ? _value.isLoadingLogin
          : isLoadingLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthSuccess: null == isAuthSuccess
          ? _value.isAuthSuccess
          : isAuthSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorName: freezed == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorToken: freezed == errorToken
          ? _value.errorToken
          : errorToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.name,
      required this.token,
      required this.isLoadingLogin,
      required this.isAuthSuccess,
      required this.errorName,
      required this.errorToken});

  @override
  final String name;
  @override
  final String token;
  @override
  final bool isLoadingLogin;
  @override
  final bool isAuthSuccess;
  @override
  final String? errorName;
  @override
  final String? errorToken;

  @override
  String toString() {
    return 'LoginState(name: $name, token: $token, isLoadingLogin: $isLoadingLogin, isAuthSuccess: $isAuthSuccess, errorName: $errorName, errorToken: $errorToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoadingLogin, isLoadingLogin) ||
                other.isLoadingLogin == isLoadingLogin) &&
            (identical(other.isAuthSuccess, isAuthSuccess) ||
                other.isAuthSuccess == isAuthSuccess) &&
            (identical(other.errorName, errorName) ||
                other.errorName == errorName) &&
            (identical(other.errorToken, errorToken) ||
                other.errorToken == errorToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, token, isLoadingLogin,
      isAuthSuccess, errorName, errorToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final String name,
      required final String token,
      required final bool isLoadingLogin,
      required final bool isAuthSuccess,
      required final String? errorName,
      required final String? errorToken}) = _$LoginStateImpl;

  @override
  String get name;
  @override
  String get token;
  @override
  bool get isLoadingLogin;
  @override
  bool get isAuthSuccess;
  @override
  String? get errorName;
  @override
  String? get errorToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
