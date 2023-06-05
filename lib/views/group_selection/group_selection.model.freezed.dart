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
  Option<UserModel> get user => throw _privateConstructorUsedError;
  GroupModel? get newGroup => throw _privateConstructorUsedError;
  XFile? get groupImage => throw _privateConstructorUsedError;
  InvitationModel? get invitations => throw _privateConstructorUsedError;

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
      Option<UserModel> user,
      GroupModel? newGroup,
      XFile? groupImage,
      InvitationModel? invitations});

  $GroupModelCopyWith<$Res>? get newGroup;
  $InvitationModelCopyWith<$Res>? get invitations;
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
    Object? invitations = freezed,
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
              as Option<UserModel>,
      newGroup: freezed == newGroup
          ? _value.newGroup
          : newGroup // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      invitations: freezed == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as InvitationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupModelCopyWith<$Res>? get newGroup {
    if (_value.newGroup == null) {
      return null;
    }

    return $GroupModelCopyWith<$Res>(_value.newGroup!, (value) {
      return _then(_value.copyWith(newGroup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvitationModelCopyWith<$Res>? get invitations {
    if (_value.invitations == null) {
      return null;
    }

    return $InvitationModelCopyWith<$Res>(_value.invitations!, (value) {
      return _then(_value.copyWith(invitations: value) as $Val);
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
      Option<UserModel> user,
      GroupModel? newGroup,
      XFile? groupImage,
      InvitationModel? invitations});

  @override
  $GroupModelCopyWith<$Res>? get newGroup;
  @override
  $InvitationModelCopyWith<$Res>? get invitations;
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
    Object? invitations = freezed,
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
              as Option<UserModel>,
      newGroup: freezed == newGroup
          ? _value.newGroup
          : newGroup // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      groupImage: freezed == groupImage
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      invitations: freezed == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as InvitationModel?,
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
      required this.groupImage,
      required this.invitations});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final Option<UserModel> user;
  @override
  final GroupModel? newGroup;
  @override
  final XFile? groupImage;
  @override
  final InvitationModel? invitations;

  @override
  String toString() {
    return 'GroupSelectionModel(isLoading: $isLoading, hasError: $hasError, user: $user, newGroup: $newGroup, groupImage: $groupImage, invitations: $invitations)';
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
                other.groupImage == groupImage) &&
            (identical(other.invitations, invitations) ||
                other.invitations == invitations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, user,
      newGroup, groupImage, invitations);

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
      required final Option<UserModel> user,
      required final GroupModel? newGroup,
      required final XFile? groupImage,
      required final InvitationModel? invitations}) = _$_GroupSelectionModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  Option<UserModel> get user;
  @override
  GroupModel? get newGroup;
  @override
  XFile? get groupImage;
  @override
  InvitationModel? get invitations;
  @override
  @JsonKey(ignore: true)
  _$$_GroupSelectionModelCopyWith<_$_GroupSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<GroupModel> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({String id, String username, List<GroupModel> groups});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

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
              as List<GroupModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, List<GroupModel> groups});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
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
              as List<GroupModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {required this.id,
      required this.username,
      final List<GroupModel> groups = const <GroupModel>[]})
      : _groups = groups;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;
  final List<GroupModel> _groups;
  @override
  @JsonKey()
  List<GroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, groups: $groups)';
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

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final String id,
      required final String username,
      final List<GroupModel> groups}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  List<GroupModel> get groups;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupModel _$GroupModelFromJson(Map<String, dynamic> json) {
  return _GroupModel.fromJson(json);
}

/// @nodoc
mixin _$GroupModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupModelCopyWith<GroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupModelCopyWith<$Res> {
  factory $GroupModelCopyWith(
          GroupModel value, $Res Function(GroupModel) then) =
      _$GroupModelCopyWithImpl<$Res, GroupModel>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String? description,
      String? imageUrl,
      String? creatorId});
}

/// @nodoc
class _$GroupModelCopyWithImpl<$Res, $Val extends GroupModel>
    implements $GroupModelCopyWith<$Res> {
  _$GroupModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_GroupModelCopyWith<$Res>
    implements $GroupModelCopyWith<$Res> {
  factory _$$_GroupModelCopyWith(
          _$_GroupModel value, $Res Function(_$_GroupModel) then) =
      __$$_GroupModelCopyWithImpl<$Res>;
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
class __$$_GroupModelCopyWithImpl<$Res>
    extends _$GroupModelCopyWithImpl<$Res, _$_GroupModel>
    implements _$$_GroupModelCopyWith<$Res> {
  __$$_GroupModelCopyWithImpl(
      _$_GroupModel _value, $Res Function(_$_GroupModel) _then)
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
    return _then(_$_GroupModel(
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
class _$_GroupModel implements _GroupModel {
  _$_GroupModel(
      {this.id,
      required this.name,
      required this.description,
      this.imageUrl,
      this.creatorId});

  factory _$_GroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroupModelFromJson(json);

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
    return 'GroupModel(id: $id, name: $name, description: $description, imageUrl: $imageUrl, creatorId: $creatorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupModel &&
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
  _$$_GroupModelCopyWith<_$_GroupModel> get copyWith =>
      __$$_GroupModelCopyWithImpl<_$_GroupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupModelToJson(
      this,
    );
  }
}

abstract class _GroupModel implements GroupModel {
  factory _GroupModel(
      {final String? id,
      required final String name,
      required final String? description,
      final String? imageUrl,
      final String? creatorId}) = _$_GroupModel;

  factory _GroupModel.fromJson(Map<String, dynamic> json) =
      _$_GroupModel.fromJson;

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
  _$$_GroupModelCopyWith<_$_GroupModel> get copyWith =>
      throw _privateConstructorUsedError;
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

InvitationModel _$InvitationModelFromJson(Map<String, dynamic> json) {
  return _InvitationModel.fromJson(json);
}

/// @nodoc
mixin _$InvitationModel {
  String get groupId => throw _privateConstructorUsedError;
  Set<String> get emails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationModelCopyWith<InvitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationModelCopyWith<$Res> {
  factory $InvitationModelCopyWith(
          InvitationModel value, $Res Function(InvitationModel) then) =
      _$InvitationModelCopyWithImpl<$Res, InvitationModel>;
  @useResult
  $Res call({String groupId, Set<String> emails});
}

/// @nodoc
class _$InvitationModelCopyWithImpl<$Res, $Val extends InvitationModel>
    implements $InvitationModelCopyWith<$Res> {
  _$InvitationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? emails = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvitationModelCopyWith<$Res>
    implements $InvitationModelCopyWith<$Res> {
  factory _$$_InvitationModelCopyWith(
          _$_InvitationModel value, $Res Function(_$_InvitationModel) then) =
      __$$_InvitationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupId, Set<String> emails});
}

/// @nodoc
class __$$_InvitationModelCopyWithImpl<$Res>
    extends _$InvitationModelCopyWithImpl<$Res, _$_InvitationModel>
    implements _$$_InvitationModelCopyWith<$Res> {
  __$$_InvitationModelCopyWithImpl(
      _$_InvitationModel _value, $Res Function(_$_InvitationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? emails = null,
  }) {
    return _then(_$_InvitationModel(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      emails: null == emails
          ? _value._emails
          : emails // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvitationModel implements _InvitationModel {
  _$_InvitationModel(
      {required this.groupId, final Set<String> emails = const <String>{}})
      : _emails = emails;

  factory _$_InvitationModel.fromJson(Map<String, dynamic> json) =>
      _$$_InvitationModelFromJson(json);

  @override
  final String groupId;
  final Set<String> _emails;
  @override
  @JsonKey()
  Set<String> get emails {
    if (_emails is EqualUnmodifiableSetView) return _emails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_emails);
  }

  @override
  String toString() {
    return 'InvitationModel(groupId: $groupId, emails: $emails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationModel &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            const DeepCollectionEquality().equals(other._emails, _emails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupId, const DeepCollectionEquality().hash(_emails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationModelCopyWith<_$_InvitationModel> get copyWith =>
      __$$_InvitationModelCopyWithImpl<_$_InvitationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvitationModelToJson(
      this,
    );
  }
}

abstract class _InvitationModel implements InvitationModel {
  factory _InvitationModel(
      {required final String groupId,
      final Set<String> emails}) = _$_InvitationModel;

  factory _InvitationModel.fromJson(Map<String, dynamic> json) =
      _$_InvitationModel.fromJson;

  @override
  String get groupId;
  @override
  Set<String> get emails;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationModelCopyWith<_$_InvitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
