// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardModel {
  int get currentIndex => throw _privateConstructorUsedError;
  String? get currentTitle => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardModelCopyWith<DashboardModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res, DashboardModel>;
  @useResult
  $Res call({int currentIndex, String? currentTitle, String? selectedCategory, List<String> categories});
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res, $Val extends DashboardModel> implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? currentTitle = freezed,
    Object? selectedCategory = freezed,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentTitle: freezed == currentTitle
          ? _value.currentTitle
          : currentTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardModelCopyWith<$Res> implements $DashboardModelCopyWith<$Res> {
  factory _$$_DashboardModelCopyWith(_$_DashboardModel value, $Res Function(_$_DashboardModel) then) =
      __$$_DashboardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex, String? currentTitle, String? selectedCategory, List<String> categories});
}

/// @nodoc
class __$$_DashboardModelCopyWithImpl<$Res> extends _$DashboardModelCopyWithImpl<$Res, _$_DashboardModel>
    implements _$$_DashboardModelCopyWith<$Res> {
  __$$_DashboardModelCopyWithImpl(_$_DashboardModel _value, $Res Function(_$_DashboardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? currentTitle = freezed,
    Object? selectedCategory = freezed,
    Object? categories = null,
  }) {
    return _then(_$_DashboardModel(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentTitle: freezed == currentTitle
          ? _value.currentTitle
          : currentTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DashboardModel implements _DashboardModel {
  _$_DashboardModel(
      {required this.currentIndex,
      required this.currentTitle,
      required this.selectedCategory,
      final List<String> categories = const []})
      : _categories = categories;

  @override
  final int currentIndex;
  @override
  final String? currentTitle;
  @override
  final String? selectedCategory;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'DashboardModel(currentIndex: $currentIndex, currentTitle: $currentTitle, selectedCategory: $selectedCategory, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardModel &&
            (identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex) &&
            (identical(other.currentTitle, currentTitle) || other.currentTitle == currentTitle) &&
            (identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality().equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentIndex, currentTitle, selectedCategory, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardModelCopyWith<_$_DashboardModel> get copyWith =>
      __$$_DashboardModelCopyWithImpl<_$_DashboardModel>(this, _$identity);
}

abstract class _DashboardModel implements DashboardModel {
  factory _DashboardModel(
      {required final int currentIndex,
      required final String? currentTitle,
      required final String? selectedCategory,
      final List<String> categories}) = _$_DashboardModel;

  @override
  int get currentIndex;
  @override
  String? get currentTitle;
  @override
  String? get selectedCategory;
  @override
  List<String> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardModelCopyWith<_$_DashboardModel> get copyWith => throw _privateConstructorUsedError;
}
