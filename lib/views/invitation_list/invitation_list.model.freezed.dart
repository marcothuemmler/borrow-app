// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_list.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvitationListModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<InvitationListInvitationModel> get groupInvitations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvitationListModelCopyWith<InvitationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationListModelCopyWith<$Res> {
  factory $InvitationListModelCopyWith(
          InvitationListModel value, $Res Function(InvitationListModel) then) =
      _$InvitationListModelCopyWithImpl<$Res, InvitationListModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<InvitationListInvitationModel> groupInvitations});
}

/// @nodoc
class _$InvitationListModelCopyWithImpl<$Res, $Val extends InvitationListModel>
    implements $InvitationListModelCopyWith<$Res> {
  _$InvitationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? groupInvitations = null,
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
      groupInvitations: null == groupInvitations
          ? _value.groupInvitations
          : groupInvitations // ignore: cast_nullable_to_non_nullable
              as List<InvitationListInvitationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvitationListModelCopyWith<$Res>
    implements $InvitationListModelCopyWith<$Res> {
  factory _$$_InvitationListModelCopyWith(_$_InvitationListModel value,
          $Res Function(_$_InvitationListModel) then) =
      __$$_InvitationListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<InvitationListInvitationModel> groupInvitations});
}

/// @nodoc
class __$$_InvitationListModelCopyWithImpl<$Res>
    extends _$InvitationListModelCopyWithImpl<$Res, _$_InvitationListModel>
    implements _$$_InvitationListModelCopyWith<$Res> {
  __$$_InvitationListModelCopyWithImpl(_$_InvitationListModel _value,
      $Res Function(_$_InvitationListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? groupInvitations = null,
  }) {
    return _then(_$_InvitationListModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      groupInvitations: null == groupInvitations
          ? _value._groupInvitations
          : groupInvitations // ignore: cast_nullable_to_non_nullable
              as List<InvitationListInvitationModel>,
    ));
  }
}

/// @nodoc

class _$_InvitationListModel implements _InvitationListModel {
  const _$_InvitationListModel(
      {required this.isLoading,
      required this.hasError,
      required final List<InvitationListInvitationModel> groupInvitations})
      : _groupInvitations = groupInvitations;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<InvitationListInvitationModel> _groupInvitations;
  @override
  List<InvitationListInvitationModel> get groupInvitations {
    if (_groupInvitations is EqualUnmodifiableListView)
      return _groupInvitations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupInvitations);
  }

  @override
  String toString() {
    return 'InvitationListModel(isLoading: $isLoading, hasError: $hasError, groupInvitations: $groupInvitations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationListModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._groupInvitations, _groupInvitations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_groupInvitations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationListModelCopyWith<_$_InvitationListModel> get copyWith =>
      __$$_InvitationListModelCopyWithImpl<_$_InvitationListModel>(
          this, _$identity);
}

abstract class _InvitationListModel implements InvitationListModel {
  const factory _InvitationListModel(
      {required final bool isLoading,
      required final bool hasError,
      required final List<InvitationListInvitationModel>
          groupInvitations}) = _$_InvitationListModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<InvitationListInvitationModel> get groupInvitations;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationListModelCopyWith<_$_InvitationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

InvitationListInvitationModel _$InvitationListInvitationModelFromJson(
    Map<String, dynamic> json) {
  return _InvitationListInvitationModel.fromJson(json);
}

/// @nodoc
mixin _$InvitationListInvitationModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationListInvitationModelCopyWith<InvitationListInvitationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationListInvitationModelCopyWith<$Res> {
  factory $InvitationListInvitationModelCopyWith(
          InvitationListInvitationModel value,
          $Res Function(InvitationListInvitationModel) then) =
      _$InvitationListInvitationModelCopyWithImpl<$Res,
          InvitationListInvitationModel>;
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$InvitationListInvitationModelCopyWithImpl<$Res,
        $Val extends InvitationListInvitationModel>
    implements $InvitationListInvitationModelCopyWith<$Res> {
  _$InvitationListInvitationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvitationListInvitationModelCopyWith<$Res>
    implements $InvitationListInvitationModelCopyWith<$Res> {
  factory _$$_InvitationListInvitationModelCopyWith(
          _$_InvitationListInvitationModel value,
          $Res Function(_$_InvitationListInvitationModel) then) =
      __$$_InvitationListInvitationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$$_InvitationListInvitationModelCopyWithImpl<$Res>
    extends _$InvitationListInvitationModelCopyWithImpl<$Res,
        _$_InvitationListInvitationModel>
    implements _$$_InvitationListInvitationModelCopyWith<$Res> {
  __$$_InvitationListInvitationModelCopyWithImpl(
      _$_InvitationListInvitationModel _value,
      $Res Function(_$_InvitationListInvitationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_InvitationListInvitationModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvitationListInvitationModel
    implements _InvitationListInvitationModel {
  const _$_InvitationListInvitationModel(
      {required this.id, required this.name, this.description});

  factory _$_InvitationListInvitationModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_InvitationListInvitationModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'InvitationListInvitationModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationListInvitationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationListInvitationModelCopyWith<_$_InvitationListInvitationModel>
      get copyWith => __$$_InvitationListInvitationModelCopyWithImpl<
          _$_InvitationListInvitationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvitationListInvitationModelToJson(
      this,
    );
  }
}

abstract class _InvitationListInvitationModel
    implements InvitationListInvitationModel {
  const factory _InvitationListInvitationModel(
      {required final String id,
      required final String name,
      final String? description}) = _$_InvitationListInvitationModel;

  factory _InvitationListInvitationModel.fromJson(Map<String, dynamic> json) =
      _$_InvitationListInvitationModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationListInvitationModelCopyWith<_$_InvitationListInvitationModel>
      get copyWith => throw _privateConstructorUsedError;
}
