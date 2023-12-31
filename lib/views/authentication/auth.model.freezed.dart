// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginModel {
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  LoginDto get loginDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call({bool hasError, bool isLoading, LoginDto loginDto});

  $LoginDtoCopyWith<$Res> get loginDto;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? loginDto = null,
  }) {
    return _then(_value.copyWith(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginDto: null == loginDto
          ? _value.loginDto
          : loginDto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDtoCopyWith<$Res> get loginDto {
    return $LoginDtoCopyWith<$Res>(_value.loginDto, (value) {
      return _then(_value.copyWith(loginDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginModelCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$_LoginModelCopyWith(
          _$_LoginModel value, $Res Function(_$_LoginModel) then) =
      __$$_LoginModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasError, bool isLoading, LoginDto loginDto});

  @override
  $LoginDtoCopyWith<$Res> get loginDto;
}

/// @nodoc
class __$$_LoginModelCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$_LoginModel>
    implements _$$_LoginModelCopyWith<$Res> {
  __$$_LoginModelCopyWithImpl(
      _$_LoginModel _value, $Res Function(_$_LoginModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? loginDto = null,
  }) {
    return _then(_$_LoginModel(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginDto: null == loginDto
          ? _value.loginDto
          : loginDto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
    ));
  }
}

/// @nodoc

class _$_LoginModel implements _LoginModel {
  const _$_LoginModel(
      {required this.hasError,
      required this.isLoading,
      required this.loginDto});

  @override
  final bool hasError;
  @override
  final bool isLoading;
  @override
  final LoginDto loginDto;

  @override
  String toString() {
    return 'LoginModel(hasError: $hasError, isLoading: $isLoading, loginDto: $loginDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginModel &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loginDto, loginDto) ||
                other.loginDto == loginDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasError, isLoading, loginDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      __$$_LoginModelCopyWithImpl<_$_LoginModel>(this, _$identity);
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {required final bool hasError,
      required final bool isLoading,
      required final LoginDto loginDto}) = _$_LoginModel;

  @override
  bool get hasError;
  @override
  bool get isLoading;
  @override
  LoginDto get loginDto;
  @override
  @JsonKey(ignore: true)
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupModel {
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  SignupDto get signupDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupModelCopyWith<SignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupModelCopyWith<$Res> {
  factory $SignupModelCopyWith(
          SignupModel value, $Res Function(SignupModel) then) =
      _$SignupModelCopyWithImpl<$Res, SignupModel>;
  @useResult
  $Res call({bool hasError, bool isLoading, SignupDto signupDto});

  $SignupDtoCopyWith<$Res> get signupDto;
}

/// @nodoc
class _$SignupModelCopyWithImpl<$Res, $Val extends SignupModel>
    implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? signupDto = null,
  }) {
    return _then(_value.copyWith(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signupDto: null == signupDto
          ? _value.signupDto
          : signupDto // ignore: cast_nullable_to_non_nullable
              as SignupDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignupDtoCopyWith<$Res> get signupDto {
    return $SignupDtoCopyWith<$Res>(_value.signupDto, (value) {
      return _then(_value.copyWith(signupDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignupModelCopyWith<$Res>
    implements $SignupModelCopyWith<$Res> {
  factory _$$_SignupModelCopyWith(
          _$_SignupModel value, $Res Function(_$_SignupModel) then) =
      __$$_SignupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasError, bool isLoading, SignupDto signupDto});

  @override
  $SignupDtoCopyWith<$Res> get signupDto;
}

/// @nodoc
class __$$_SignupModelCopyWithImpl<$Res>
    extends _$SignupModelCopyWithImpl<$Res, _$_SignupModel>
    implements _$$_SignupModelCopyWith<$Res> {
  __$$_SignupModelCopyWithImpl(
      _$_SignupModel _value, $Res Function(_$_SignupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? signupDto = null,
  }) {
    return _then(_$_SignupModel(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signupDto: null == signupDto
          ? _value.signupDto
          : signupDto // ignore: cast_nullable_to_non_nullable
              as SignupDto,
    ));
  }
}

/// @nodoc

class _$_SignupModel implements _SignupModel {
  const _$_SignupModel(
      {required this.hasError,
      required this.isLoading,
      required this.signupDto});

  @override
  final bool hasError;
  @override
  final bool isLoading;
  @override
  final SignupDto signupDto;

  @override
  String toString() {
    return 'SignupModel(hasError: $hasError, isLoading: $isLoading, signupDto: $signupDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupModel &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.signupDto, signupDto) ||
                other.signupDto == signupDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasError, isLoading, signupDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupModelCopyWith<_$_SignupModel> get copyWith =>
      __$$_SignupModelCopyWithImpl<_$_SignupModel>(this, _$identity);
}

abstract class _SignupModel implements SignupModel {
  const factory _SignupModel(
      {required final bool hasError,
      required final bool isLoading,
      required final SignupDto signupDto}) = _$_SignupModel;

  @override
  bool get hasError;
  @override
  bool get isLoading;
  @override
  SignupDto get signupDto;
  @override
  @JsonKey(ignore: true)
  _$$_SignupModelCopyWith<_$_SignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SignupDto _$SignupDtoFromJson(Map<String, dynamic> json) {
  return _SignupDto.fromJson(json);
}

/// @nodoc
mixin _$SignupDto {
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupDtoCopyWith<SignupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupDtoCopyWith<$Res> {
  factory $SignupDtoCopyWith(SignupDto value, $Res Function(SignupDto) then) =
      _$SignupDtoCopyWithImpl<$Res, SignupDto>;
  @useResult
  $Res call({String? email, String? username, String? password});
}

/// @nodoc
class _$SignupDtoCopyWithImpl<$Res, $Val extends SignupDto>
    implements $SignupDtoCopyWith<$Res> {
  _$SignupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupDtoCopyWith<$Res> implements $SignupDtoCopyWith<$Res> {
  factory _$$_SignupDtoCopyWith(
          _$_SignupDto value, $Res Function(_$_SignupDto) then) =
      __$$_SignupDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? username, String? password});
}

/// @nodoc
class __$$_SignupDtoCopyWithImpl<$Res>
    extends _$SignupDtoCopyWithImpl<$Res, _$_SignupDto>
    implements _$$_SignupDtoCopyWith<$Res> {
  __$$_SignupDtoCopyWithImpl(
      _$_SignupDto _value, $Res Function(_$_SignupDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignupDto(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupDto implements _SignupDto {
  const _$_SignupDto(
      {required this.email, required this.username, required this.password});

  factory _$_SignupDto.fromJson(Map<String, dynamic> json) =>
      _$$_SignupDtoFromJson(json);

  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? password;

  @override
  String toString() {
    return 'SignupDto(email: $email, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupDtoCopyWith<_$_SignupDto> get copyWith =>
      __$$_SignupDtoCopyWithImpl<_$_SignupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupDtoToJson(
      this,
    );
  }
}

abstract class _SignupDto implements SignupDto {
  const factory _SignupDto(
      {required final String? email,
      required final String? username,
      required final String? password}) = _$_SignupDto;

  factory _SignupDto.fromJson(Map<String, dynamic> json) =
      _$_SignupDto.fromJson;

  @override
  String? get email;
  @override
  String? get username;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignupDtoCopyWith<_$_SignupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res, LoginDto>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res, $Val extends LoginDto>
    implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginDtoCopyWith<$Res> implements $LoginDtoCopyWith<$Res> {
  factory _$$_LoginDtoCopyWith(
          _$_LoginDto value, $Res Function(_$_LoginDto) then) =
      __$$_LoginDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$_LoginDtoCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$_LoginDto>
    implements _$$_LoginDtoCopyWith<$Res> {
  __$$_LoginDtoCopyWithImpl(
      _$_LoginDto _value, $Res Function(_$_LoginDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginDto(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDto implements _LoginDto {
  const _$_LoginDto({required this.email, required this.password});

  factory _$_LoginDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDtoFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      __$$_LoginDtoCopyWithImpl<_$_LoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDtoToJson(
      this,
    );
  }
}

abstract class _LoginDto implements LoginDto {
  const factory _LoginDto(
      {required final String? email,
      required final String? password}) = _$_LoginDto;

  factory _LoginDto.fromJson(Map<String, dynamic> json) = _$_LoginDto.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}
