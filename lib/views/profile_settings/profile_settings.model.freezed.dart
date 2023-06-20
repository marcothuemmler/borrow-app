// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_settings.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileSettingsModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get userDataChanged => throw _privateConstructorUsedError;
  bool get imageChanged => throw _privateConstructorUsedError;
  XFile? get profileImage => throw _privateConstructorUsedError;
  XFile? get patchedProfileImage => throw _privateConstructorUsedError;
  ProfileSettingsUserModel? get user => throw _privateConstructorUsedError;
  ProfileSettingsUserModel? get patchedUser =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileSettingsModelCopyWith<ProfileSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSettingsModelCopyWith<$Res> {
  factory $ProfileSettingsModelCopyWith(ProfileSettingsModel value,
          $Res Function(ProfileSettingsModel) then) =
      _$ProfileSettingsModelCopyWithImpl<$Res, ProfileSettingsModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool userDataChanged,
      bool imageChanged,
      XFile? profileImage,
      XFile? patchedProfileImage,
      ProfileSettingsUserModel? user,
      ProfileSettingsUserModel? patchedUser});

  $ProfileSettingsUserModelCopyWith<$Res>? get user;
  $ProfileSettingsUserModelCopyWith<$Res>? get patchedUser;
}

/// @nodoc
class _$ProfileSettingsModelCopyWithImpl<$Res,
        $Val extends ProfileSettingsModel>
    implements $ProfileSettingsModelCopyWith<$Res> {
  _$ProfileSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? userDataChanged = null,
    Object? imageChanged = null,
    Object? profileImage = freezed,
    Object? patchedProfileImage = freezed,
    Object? user = freezed,
    Object? patchedUser = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      userDataChanged: null == userDataChanged
          ? _value.userDataChanged
          : userDataChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      imageChanged: null == imageChanged
          ? _value.imageChanged
          : imageChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      patchedProfileImage: freezed == patchedProfileImage
          ? _value.patchedProfileImage
          : patchedProfileImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileSettingsUserModel?,
      patchedUser: freezed == patchedUser
          ? _value.patchedUser
          : patchedUser // ignore: cast_nullable_to_non_nullable
              as ProfileSettingsUserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileSettingsUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ProfileSettingsUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileSettingsUserModelCopyWith<$Res>? get patchedUser {
    if (_value.patchedUser == null) {
      return null;
    }

    return $ProfileSettingsUserModelCopyWith<$Res>(_value.patchedUser!,
        (value) {
      return _then(_value.copyWith(patchedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileSettingsModelCopyWith<$Res>
    implements $ProfileSettingsModelCopyWith<$Res> {
  factory _$$_ProfileSettingsModelCopyWith(_$_ProfileSettingsModel value,
          $Res Function(_$_ProfileSettingsModel) then) =
      __$$_ProfileSettingsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool userDataChanged,
      bool imageChanged,
      XFile? profileImage,
      XFile? patchedProfileImage,
      ProfileSettingsUserModel? user,
      ProfileSettingsUserModel? patchedUser});

  @override
  $ProfileSettingsUserModelCopyWith<$Res>? get user;
  @override
  $ProfileSettingsUserModelCopyWith<$Res>? get patchedUser;
}

/// @nodoc
class __$$_ProfileSettingsModelCopyWithImpl<$Res>
    extends _$ProfileSettingsModelCopyWithImpl<$Res, _$_ProfileSettingsModel>
    implements _$$_ProfileSettingsModelCopyWith<$Res> {
  __$$_ProfileSettingsModelCopyWithImpl(_$_ProfileSettingsModel _value,
      $Res Function(_$_ProfileSettingsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? userDataChanged = null,
    Object? imageChanged = null,
    Object? profileImage = freezed,
    Object? patchedProfileImage = freezed,
    Object? user = freezed,
    Object? patchedUser = freezed,
  }) {
    return _then(_$_ProfileSettingsModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      userDataChanged: null == userDataChanged
          ? _value.userDataChanged
          : userDataChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      imageChanged: null == imageChanged
          ? _value.imageChanged
          : imageChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      patchedProfileImage: freezed == patchedProfileImage
          ? _value.patchedProfileImage
          : patchedProfileImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileSettingsUserModel?,
      patchedUser: freezed == patchedUser
          ? _value.patchedUser
          : patchedUser // ignore: cast_nullable_to_non_nullable
              as ProfileSettingsUserModel?,
    ));
  }
}

/// @nodoc

class _$_ProfileSettingsModel implements _ProfileSettingsModel {
  const _$_ProfileSettingsModel(
      {required this.isLoading,
      required this.hasError,
      required this.userDataChanged,
      required this.imageChanged,
      required this.profileImage,
      required this.patchedProfileImage,
      required this.user,
      required this.patchedUser});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool userDataChanged;
  @override
  final bool imageChanged;
  @override
  final XFile? profileImage;
  @override
  final XFile? patchedProfileImage;
  @override
  final ProfileSettingsUserModel? user;
  @override
  final ProfileSettingsUserModel? patchedUser;

  @override
  String toString() {
    return 'ProfileSettingsModel(isLoading: $isLoading, hasError: $hasError, userDataChanged: $userDataChanged, imageChanged: $imageChanged, profileImage: $profileImage, patchedProfileImage: $patchedProfileImage, user: $user, patchedUser: $patchedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileSettingsModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.userDataChanged, userDataChanged) ||
                other.userDataChanged == userDataChanged) &&
            (identical(other.imageChanged, imageChanged) ||
                other.imageChanged == imageChanged) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.patchedProfileImage, patchedProfileImage) ||
                other.patchedProfileImage == patchedProfileImage) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.patchedUser, patchedUser) ||
                other.patchedUser == patchedUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      userDataChanged,
      imageChanged,
      profileImage,
      patchedProfileImage,
      user,
      patchedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileSettingsModelCopyWith<_$_ProfileSettingsModel> get copyWith =>
      __$$_ProfileSettingsModelCopyWithImpl<_$_ProfileSettingsModel>(
          this, _$identity);
}

abstract class _ProfileSettingsModel implements ProfileSettingsModel {
  const factory _ProfileSettingsModel(
          {required final bool isLoading,
          required final bool hasError,
          required final bool userDataChanged,
          required final bool imageChanged,
          required final XFile? profileImage,
          required final XFile? patchedProfileImage,
          required final ProfileSettingsUserModel? user,
          required final ProfileSettingsUserModel? patchedUser}) =
      _$_ProfileSettingsModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get userDataChanged;
  @override
  bool get imageChanged;
  @override
  XFile? get profileImage;
  @override
  XFile? get patchedProfileImage;
  @override
  ProfileSettingsUserModel? get user;
  @override
  ProfileSettingsUserModel? get patchedUser;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileSettingsModelCopyWith<_$_ProfileSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileSettingsUserModel _$ProfileSettingsUserModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileSettingsUserModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileSettingsUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileSettingsUserModelCopyWith<ProfileSettingsUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSettingsUserModelCopyWith<$Res> {
  factory $ProfileSettingsUserModelCopyWith(ProfileSettingsUserModel value,
          $Res Function(ProfileSettingsUserModel) then) =
      _$ProfileSettingsUserModelCopyWithImpl<$Res, ProfileSettingsUserModel>;
  @useResult
  $Res call({String id, String username, String email, String? imageUrl});
}

/// @nodoc
class _$ProfileSettingsUserModelCopyWithImpl<$Res,
        $Val extends ProfileSettingsUserModel>
    implements $ProfileSettingsUserModelCopyWith<$Res> {
  _$ProfileSettingsUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileSettingsUserModelCopyWith<$Res>
    implements $ProfileSettingsUserModelCopyWith<$Res> {
  factory _$$_ProfileSettingsUserModelCopyWith(
          _$_ProfileSettingsUserModel value,
          $Res Function(_$_ProfileSettingsUserModel) then) =
      __$$_ProfileSettingsUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, String email, String? imageUrl});
}

/// @nodoc
class __$$_ProfileSettingsUserModelCopyWithImpl<$Res>
    extends _$ProfileSettingsUserModelCopyWithImpl<$Res,
        _$_ProfileSettingsUserModel>
    implements _$$_ProfileSettingsUserModelCopyWith<$Res> {
  __$$_ProfileSettingsUserModelCopyWithImpl(_$_ProfileSettingsUserModel _value,
      $Res Function(_$_ProfileSettingsUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_ProfileSettingsUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileSettingsUserModel implements _ProfileSettingsUserModel {
  const _$_ProfileSettingsUserModel(
      {required this.id,
      required this.username,
      required this.email,
      this.imageUrl});

  factory _$_ProfileSettingsUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileSettingsUserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ProfileSettingsUserModel(id: $id, username: $username, email: $email, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileSettingsUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileSettingsUserModelCopyWith<_$_ProfileSettingsUserModel>
      get copyWith => __$$_ProfileSettingsUserModelCopyWithImpl<
          _$_ProfileSettingsUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileSettingsUserModelToJson(
      this,
    );
  }
}

abstract class _ProfileSettingsUserModel implements ProfileSettingsUserModel {
  const factory _ProfileSettingsUserModel(
      {required final String id,
      required final String username,
      required final String email,
      final String? imageUrl}) = _$_ProfileSettingsUserModel;

  factory _ProfileSettingsUserModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileSettingsUserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileSettingsUserModelCopyWith<_$_ProfileSettingsUserModel>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) {
  return _UpdateUserDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserDto {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserDtoCopyWith<UpdateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserDtoCopyWith<$Res> {
  factory $UpdateUserDtoCopyWith(
          UpdateUserDto value, $Res Function(UpdateUserDto) then) =
      _$UpdateUserDtoCopyWithImpl<$Res, UpdateUserDto>;
  @useResult
  $Res call({String username, String email});
}

/// @nodoc
class _$UpdateUserDtoCopyWithImpl<$Res, $Val extends UpdateUserDto>
    implements $UpdateUserDtoCopyWith<$Res> {
  _$UpdateUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserDtoCopyWith<$Res>
    implements $UpdateUserDtoCopyWith<$Res> {
  factory _$$_UpdateUserDtoCopyWith(
          _$_UpdateUserDto value, $Res Function(_$_UpdateUserDto) then) =
      __$$_UpdateUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String email});
}

/// @nodoc
class __$$_UpdateUserDtoCopyWithImpl<$Res>
    extends _$UpdateUserDtoCopyWithImpl<$Res, _$_UpdateUserDto>
    implements _$$_UpdateUserDtoCopyWith<$Res> {
  __$$_UpdateUserDtoCopyWithImpl(
      _$_UpdateUserDto _value, $Res Function(_$_UpdateUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_$_UpdateUserDto(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserDto implements _UpdateUserDto {
  const _$_UpdateUserDto({required this.username, required this.email});

  factory _$_UpdateUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserDtoFromJson(json);

  @override
  final String username;
  @override
  final String email;

  @override
  String toString() {
    return 'UpdateUserDto(username: $username, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDtoCopyWith<_$_UpdateUserDto> get copyWith =>
      __$$_UpdateUserDtoCopyWithImpl<_$_UpdateUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserDtoToJson(
      this,
    );
  }
}

abstract class _UpdateUserDto implements UpdateUserDto {
  const factory _UpdateUserDto(
      {required final String username,
      required final String email}) = _$_UpdateUserDto;

  factory _UpdateUserDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserDto.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserDtoCopyWith<_$_UpdateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
