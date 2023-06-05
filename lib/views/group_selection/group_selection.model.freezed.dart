// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_selection.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupSelectionModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Option<GroupSelectionUserModel> get user =>
      throw _privateConstructorUsedError;
  GroupSelectionGroupModel? get newGroup => throw _privateConstructorUsedError;
  XFile? get groupImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupSelectionModelCopyWith<GroupSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSelectionModelCopyWith<$Res> {
  factory $GroupSelectionModelCopyWith(
          GroupSelectionModel value, $Res Function(GroupSelectionModel) then) =
      _$GroupSelectionModelCopyWithImpl<$Res, GroupSelectionModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      Option<GroupSelectionUserModel> user,
      GroupSelectionGroupModel? newGroup,
      XFile? groupImage});

  $GroupSelectionGroupModelCopyWith<$Res>? get newGroup;
}

/// @nodoc
class _$GroupSelectionModelCopyWithImpl<$Res, $Val extends GroupSelectionModel>
    implements $GroupSelectionModelCopyWith<$Res> {
  _$GroupSelectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? user = null,
    Object? newGroup = freezed,
    Object? groupImage = freezed,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<GroupSelectionUserModel>,
      newGroup: freezed == newGroup
          ? _value.newGroup
          : newGroup // ignore: cast_nullable_to_non_nullable
              as GroupSelectionGroupModel?,
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupSelectionGroupModelCopyWith<$Res>? get newGroup {
    if (_value.newGroup == null) {
      return null;
    }

    return $GroupSelectionGroupModelCopyWith<$Res>(_value.newGroup!, (value) {
      return _then(_value.copyWith(newGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GroupSelectionModelCopyWith<$Res>
    implements $GroupSelectionModelCopyWith<$Res> {
  factory _$$_GroupSelectionModelCopyWith(_$_GroupSelectionModel value,
          $Res Function(_$_GroupSelectionModel) then) =
      __$$_GroupSelectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      Option<GroupSelectionUserModel> user,
      GroupSelectionGroupModel? newGroup,
      XFile? groupImage});

  @override
  $GroupSelectionGroupModelCopyWith<$Res>? get newGroup;
}

/// @nodoc
class __$$_GroupSelectionModelCopyWithImpl<$Res>
    extends _$GroupSelectionModelCopyWithImpl<$Res, _$_GroupSelectionModel>
    implements _$$_GroupSelectionModelCopyWith<$Res> {
  __$$_GroupSelectionModelCopyWithImpl(_$_GroupSelectionModel _value,
      $Res Function(_$_GroupSelectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? user = null,
    Object? newGroup = freezed,
    Object? groupImage = freezed,
  }) {
    return _then(_$_GroupSelectionModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<GroupSelectionUserModel>,
      newGroup: freezed == newGroup
          ? _value.newGroup
          : newGroup // ignore: cast_nullable_to_non_nullable
              as GroupSelectionGroupModel?,
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_GroupSelectionModel implements _GroupSelectionModel {
  _$_GroupSelectionModel(
      {required this.isLoading,
      required this.hasError,
      required this.user,
      required this.newGroup,
      required this.groupImage});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final Option<GroupSelectionUserModel> user;
  @override
  final GroupSelectionGroupModel? newGroup;
  @override
  final XFile? groupImage;

  @override
  String toString() {
    return 'GroupSelectionModel(isLoading: $isLoading, hasError: $hasError, user: $user, newGroup: $newGroup, groupImage: $groupImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupSelectionModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.newGroup, newGroup) ||
                other.newGroup == newGroup) &&
            (identical(other.groupImage, groupImage) ||
                other.groupImage == groupImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, user, newGroup, groupImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupSelectionModelCopyWith<_$_GroupSelectionModel> get copyWith =>
      __$$_GroupSelectionModelCopyWithImpl<_$_GroupSelectionModel>(
          this, _$identity);
}

abstract class _GroupSelectionModel implements GroupSelectionModel {
  factory _GroupSelectionModel(
      {required final bool isLoading,
      required final bool hasError,
      required final Option<GroupSelectionUserModel> user,
      required final GroupSelectionGroupModel? newGroup,
      required final XFile? groupImage}) = _$_GroupSelectionModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  Option<GroupSelectionUserModel> get user;
  @override
  GroupSelectionGroupModel? get newGroup;
  @override
  XFile? get groupImage;
  @override
  @JsonKey(ignore: true)
  _$$_GroupSelectionModelCopyWith<_$_GroupSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupSelectionUserModel _$GroupSelectionUserModelFromJson(
    Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$GroupSelectionUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<GroupSelectionGroupModel> get groups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupSelectionUserModelCopyWith<GroupSelectionUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSelectionUserModelCopyWith<$Res> {
  factory $GroupSelectionUserModelCopyWith(GroupSelectionUserModel value,
          $Res Function(GroupSelectionUserModel) then) =
      _$GroupSelectionUserModelCopyWithImpl<$Res, GroupSelectionUserModel>;
  @useResult
  $Res call(
      {String id, String username, List<GroupSelectionGroupModel> groups});
}

/// @nodoc
class _$GroupSelectionUserModelCopyWithImpl<$Res,
        $Val extends GroupSelectionUserModel>
    implements $GroupSelectionUserModelCopyWith<$Res> {
  _$GroupSelectionUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? groups = null,
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
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupSelectionGroupModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res>
    implements $GroupSelectionUserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String username, List<GroupSelectionGroupModel> groups});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$GroupSelectionUserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? groups = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupSelectionGroupModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {required this.id,
      required this.username,
      final List<GroupSelectionGroupModel> groups = const []})
      : _groups = groups;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;
  final List<GroupSelectionGroupModel> _groups;
  @override
  @JsonKey()
  List<GroupSelectionGroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'GroupSelectionUserModel(id: $id, username: $username, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements GroupSelectionUserModel {
  factory _UserModel(
      {required final String id,
      required final String username,
      final List<GroupSelectionGroupModel> groups}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  List<GroupSelectionGroupModel> get groups;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupSelectionGroupModel _$GroupSelectionGroupModelFromJson(
    Map<String, dynamic> json) {
  return _GroupSelectionGroupModel.fromJson(json);
}

/// @nodoc
mixin _$GroupSelectionGroupModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupSelectionGroupModelCopyWith<GroupSelectionGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSelectionGroupModelCopyWith<$Res> {
  factory $GroupSelectionGroupModelCopyWith(GroupSelectionGroupModel value,
          $Res Function(GroupSelectionGroupModel) then) =
      _$GroupSelectionGroupModelCopyWithImpl<$Res, GroupSelectionGroupModel>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String? description,
      String? imageUrl,
      String? creatorId});
}

/// @nodoc
class _$GroupSelectionGroupModelCopyWithImpl<$Res,
        $Val extends GroupSelectionGroupModel>
    implements $GroupSelectionGroupModelCopyWith<$Res> {
  _$GroupSelectionGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? creatorId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupSelectionGroupModelCopyWith<$Res>
    implements $GroupSelectionGroupModelCopyWith<$Res> {
  factory _$$_GroupSelectionGroupModelCopyWith(
          _$_GroupSelectionGroupModel value,
          $Res Function(_$_GroupSelectionGroupModel) then) =
      __$$_GroupSelectionGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String? description,
      String? imageUrl,
      String? creatorId});
}

/// @nodoc
class __$$_GroupSelectionGroupModelCopyWithImpl<$Res>
    extends _$GroupSelectionGroupModelCopyWithImpl<$Res,
        _$_GroupSelectionGroupModel>
    implements _$$_GroupSelectionGroupModelCopyWith<$Res> {
  __$$_GroupSelectionGroupModelCopyWithImpl(_$_GroupSelectionGroupModel _value,
      $Res Function(_$_GroupSelectionGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? creatorId = freezed,
  }) {
    return _then(_$_GroupSelectionGroupModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupSelectionGroupModel implements _GroupSelectionGroupModel {
  _$_GroupSelectionGroupModel(
      {this.id,
      required this.name,
      required this.description,
      this.imageUrl,
      this.creatorId});

  factory _$_GroupSelectionGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroupSelectionGroupModelFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final String? creatorId;

  @override
  String toString() {
    return 'GroupSelectionGroupModel(id: $id, name: $name, description: $description, imageUrl: $imageUrl, creatorId: $creatorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupSelectionGroupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, imageUrl, creatorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupSelectionGroupModelCopyWith<_$_GroupSelectionGroupModel>
      get copyWith => __$$_GroupSelectionGroupModelCopyWithImpl<
          _$_GroupSelectionGroupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupSelectionGroupModelToJson(
      this,
    );
  }
}

abstract class _GroupSelectionGroupModel implements GroupSelectionGroupModel {
  factory _GroupSelectionGroupModel(
      {final String? id,
      required final String name,
      required final String? description,
      final String? imageUrl,
      final String? creatorId}) = _$_GroupSelectionGroupModel;

  factory _GroupSelectionGroupModel.fromJson(Map<String, dynamic> json) =
      _$_GroupSelectionGroupModel.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  String? get creatorId;
  @override
  @JsonKey(ignore: true)
  _$$_GroupSelectionGroupModelCopyWith<_$_GroupSelectionGroupModel>
      get copyWith => throw _privateConstructorUsedError;
}

CreateGroupDTO _$CreateGroupDTOFromJson(Map<String, dynamic> json) {
  return _CreateGroupDTO.fromJson(json);
}

/// @nodoc
mixin _$CreateGroupDTO {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGroupDTOCopyWith<CreateGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupDTOCopyWith<$Res> {
  factory $CreateGroupDTOCopyWith(
          CreateGroupDTO value, $Res Function(CreateGroupDTO) then) =
      _$CreateGroupDTOCopyWithImpl<$Res, CreateGroupDTO>;
  @useResult
  $Res call({String name, String? description, String creatorId});
}

/// @nodoc
class _$CreateGroupDTOCopyWithImpl<$Res, $Val extends CreateGroupDTO>
    implements $CreateGroupDTOCopyWith<$Res> {
  _$CreateGroupDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? creatorId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateGroupDTOCopyWith<$Res>
    implements $CreateGroupDTOCopyWith<$Res> {
  factory _$$_CreateGroupDTOCopyWith(
          _$_CreateGroupDTO value, $Res Function(_$_CreateGroupDTO) then) =
      __$$_CreateGroupDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description, String creatorId});
}

/// @nodoc
class __$$_CreateGroupDTOCopyWithImpl<$Res>
    extends _$CreateGroupDTOCopyWithImpl<$Res, _$_CreateGroupDTO>
    implements _$$_CreateGroupDTOCopyWith<$Res> {
  __$$_CreateGroupDTOCopyWithImpl(
      _$_CreateGroupDTO _value, $Res Function(_$_CreateGroupDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? creatorId = null,
  }) {
    return _then(_$_CreateGroupDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateGroupDTO implements _CreateGroupDTO {
  _$_CreateGroupDTO(
      {required this.name, required this.description, required this.creatorId});

  factory _$_CreateGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CreateGroupDTOFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String creatorId;

  @override
  String toString() {
    return 'CreateGroupDTO(name: $name, description: $description, creatorId: $creatorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGroupDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, creatorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateGroupDTOCopyWith<_$_CreateGroupDTO> get copyWith =>
      __$$_CreateGroupDTOCopyWithImpl<_$_CreateGroupDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateGroupDTOToJson(
      this,
    );
  }
}

abstract class _CreateGroupDTO implements CreateGroupDTO {
  factory _CreateGroupDTO(
      {required final String name,
      required final String? description,
      required final String creatorId}) = _$_CreateGroupDTO;

  factory _CreateGroupDTO.fromJson(Map<String, dynamic> json) =
      _$_CreateGroupDTO.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get creatorId;
  @override
  @JsonKey(ignore: true)
  _$$_CreateGroupDTOCopyWith<_$_CreateGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
