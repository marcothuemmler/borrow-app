// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_settings.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupSettingsModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupSettingsModelCopyWith<GroupSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSettingsModelCopyWith<$Res> {
  factory $GroupSettingsModelCopyWith(
          GroupSettingsModel value, $Res Function(GroupSettingsModel) then) =
      _$GroupSettingsModelCopyWithImpl<$Res, GroupSettingsModel>;
  @useResult
  $Res call({bool isLoading, bool hasError});
}

/// @nodoc
class _$GroupSettingsModelCopyWithImpl<$Res, $Val extends GroupSettingsModel>
    implements $GroupSettingsModelCopyWith<$Res> {
  _$GroupSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupSettingsModelCopyWith<$Res>
    implements $GroupSettingsModelCopyWith<$Res> {
  factory _$$_GroupSettingsModelCopyWith(_$_GroupSettingsModel value,
          $Res Function(_$_GroupSettingsModel) then) =
      __$$_GroupSettingsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool hasError});
}

/// @nodoc
class __$$_GroupSettingsModelCopyWithImpl<$Res>
    extends _$GroupSettingsModelCopyWithImpl<$Res, _$_GroupSettingsModel>
    implements _$$_GroupSettingsModelCopyWith<$Res> {
  __$$_GroupSettingsModelCopyWithImpl(
      _$_GroupSettingsModel _value, $Res Function(_$_GroupSettingsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_GroupSettingsModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupSettingsModel implements _GroupSettingsModel {
  const _$_GroupSettingsModel(
      {required this.isLoading, required this.hasError});

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'GroupSettingsModel(isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupSettingsModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupSettingsModelCopyWith<_$_GroupSettingsModel> get copyWith =>
      __$$_GroupSettingsModelCopyWithImpl<_$_GroupSettingsModel>(
          this, _$identity);
}

abstract class _GroupSettingsModel implements GroupSettingsModel {
  const factory _GroupSettingsModel(
      {required final bool isLoading,
      required final bool hasError}) = _$_GroupSettingsModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_GroupSettingsModelCopyWith<_$_GroupSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
