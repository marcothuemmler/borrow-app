// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_list.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatListModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<ChatRoomModel> get chats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatListModelCopyWith<ChatListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListModelCopyWith<$Res> {
  factory $ChatListModelCopyWith(
          ChatListModel value, $Res Function(ChatListModel) then) =
      _$ChatListModelCopyWithImpl<$Res, ChatListModel>;
  @useResult
  $Res call({bool isLoading, bool hasError, List<ChatRoomModel> chats});
}

/// @nodoc
class _$ChatListModelCopyWithImpl<$Res, $Val extends ChatListModel>
    implements $ChatListModelCopyWith<$Res> {
  _$ChatListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? chats = null,
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
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatListModelCopyWith<$Res>
    implements $ChatListModelCopyWith<$Res> {
  factory _$$_ChatListModelCopyWith(
          _$_ChatListModel value, $Res Function(_$_ChatListModel) then) =
      __$$_ChatListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool hasError, List<ChatRoomModel> chats});
}

/// @nodoc
class __$$_ChatListModelCopyWithImpl<$Res>
    extends _$ChatListModelCopyWithImpl<$Res, _$_ChatListModel>
    implements _$$_ChatListModelCopyWith<$Res> {
  __$$_ChatListModelCopyWithImpl(
      _$_ChatListModel _value, $Res Function(_$_ChatListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? chats = null,
  }) {
    return _then(_$_ChatListModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomModel>,
    ));
  }
}

/// @nodoc

class _$_ChatListModel implements _ChatListModel {
  const _$_ChatListModel(
      {required this.isLoading,
      required this.hasError,
      required final List<ChatRoomModel> chats})
      : _chats = chats;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<ChatRoomModel> _chats;
  @override
  List<ChatRoomModel> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatListModel(isLoading: $isLoading, hasError: $hasError, chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatListModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatListModelCopyWith<_$_ChatListModel> get copyWith =>
      __$$_ChatListModelCopyWithImpl<_$_ChatListModel>(this, _$identity);
}

abstract class _ChatListModel implements ChatListModel {
  const factory _ChatListModel(
      {required final bool isLoading,
      required final bool hasError,
      required final List<ChatRoomModel> chats}) = _$_ChatListModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<ChatRoomModel> get chats;
  @override
  @JsonKey(ignore: true)
  _$$_ChatListModelCopyWith<_$_ChatListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoomModel _$ChatRoomModelFromJson(Map<String, dynamic> json) {
  return _ChatRoomModel.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomModel {
  String get id => throw _privateConstructorUsedError;
  List<ChatRoomMessageModel> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomModelCopyWith<ChatRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomModelCopyWith<$Res> {
  factory $ChatRoomModelCopyWith(
          ChatRoomModel value, $Res Function(ChatRoomModel) then) =
      _$ChatRoomModelCopyWithImpl<$Res, ChatRoomModel>;
  @useResult
  $Res call({String id, List<ChatRoomMessageModel> messages});
}

/// @nodoc
class _$ChatRoomModelCopyWithImpl<$Res, $Val extends ChatRoomModel>
    implements $ChatRoomModelCopyWith<$Res> {
  _$ChatRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomMessageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatRoomModelCopyWith<$Res>
    implements $ChatRoomModelCopyWith<$Res> {
  factory _$$_ChatRoomModelCopyWith(
          _$_ChatRoomModel value, $Res Function(_$_ChatRoomModel) then) =
      __$$_ChatRoomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<ChatRoomMessageModel> messages});
}

/// @nodoc
class __$$_ChatRoomModelCopyWithImpl<$Res>
    extends _$ChatRoomModelCopyWithImpl<$Res, _$_ChatRoomModel>
    implements _$$_ChatRoomModelCopyWith<$Res> {
  __$$_ChatRoomModelCopyWithImpl(
      _$_ChatRoomModel _value, $Res Function(_$_ChatRoomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messages = null,
  }) {
    return _then(_$_ChatRoomModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomMessageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoomModel implements _ChatRoomModel {
  const _$_ChatRoomModel(
      {required this.id, required final List<ChatRoomMessageModel> messages})
      : _messages = messages;

  factory _$_ChatRoomModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomModelFromJson(json);

  @override
  final String id;
  final List<ChatRoomMessageModel> _messages;
  @override
  List<ChatRoomMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatRoomModel(id: $id, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatRoomModelCopyWith<_$_ChatRoomModel> get copyWith =>
      __$$_ChatRoomModelCopyWithImpl<_$_ChatRoomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomModelToJson(
      this,
    );
  }
}

abstract class _ChatRoomModel implements ChatRoomModel {
  const factory _ChatRoomModel(
      {required final String id,
      required final List<ChatRoomMessageModel> messages}) = _$_ChatRoomModel;

  factory _ChatRoomModel.fromJson(Map<String, dynamic> json) =
      _$_ChatRoomModel.fromJson;

  @override
  String get id;
  @override
  List<ChatRoomMessageModel> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomModelCopyWith<_$_ChatRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoomMessageModel _$ChatRoomMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatRoomMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomMessageModel {
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ChatRoomUserModel get sender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomMessageModelCopyWith<ChatRoomMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomMessageModelCopyWith<$Res> {
  factory $ChatRoomMessageModelCopyWith(ChatRoomMessageModel value,
          $Res Function(ChatRoomMessageModel) then) =
      _$ChatRoomMessageModelCopyWithImpl<$Res, ChatRoomMessageModel>;
  @useResult
  $Res call({String content, DateTime createdAt, ChatRoomUserModel sender});

  $ChatRoomUserModelCopyWith<$Res> get sender;
}

/// @nodoc
class _$ChatRoomMessageModelCopyWithImpl<$Res,
        $Val extends ChatRoomMessageModel>
    implements $ChatRoomMessageModelCopyWith<$Res> {
  _$ChatRoomMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? createdAt = null,
    Object? sender = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatRoomUserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatRoomUserModelCopyWith<$Res> get sender {
    return $ChatRoomUserModelCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatRoomMessageModelCopyWith<$Res>
    implements $ChatRoomMessageModelCopyWith<$Res> {
  factory _$$_ChatRoomMessageModelCopyWith(_$_ChatRoomMessageModel value,
          $Res Function(_$_ChatRoomMessageModel) then) =
      __$$_ChatRoomMessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, DateTime createdAt, ChatRoomUserModel sender});

  @override
  $ChatRoomUserModelCopyWith<$Res> get sender;
}

/// @nodoc
class __$$_ChatRoomMessageModelCopyWithImpl<$Res>
    extends _$ChatRoomMessageModelCopyWithImpl<$Res, _$_ChatRoomMessageModel>
    implements _$$_ChatRoomMessageModelCopyWith<$Res> {
  __$$_ChatRoomMessageModelCopyWithImpl(_$_ChatRoomMessageModel _value,
      $Res Function(_$_ChatRoomMessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? createdAt = null,
    Object? sender = null,
  }) {
    return _then(_$_ChatRoomMessageModel(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatRoomUserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoomMessageModel implements _ChatRoomMessageModel {
  const _$_ChatRoomMessageModel(
      {required this.content, required this.createdAt, required this.sender});

  factory _$_ChatRoomMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomMessageModelFromJson(json);

  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final ChatRoomUserModel sender;

  @override
  String toString() {
    return 'ChatRoomMessageModel(content: $content, createdAt: $createdAt, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomMessageModel &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, createdAt, sender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatRoomMessageModelCopyWith<_$_ChatRoomMessageModel> get copyWith =>
      __$$_ChatRoomMessageModelCopyWithImpl<_$_ChatRoomMessageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomMessageModelToJson(
      this,
    );
  }
}

abstract class _ChatRoomMessageModel implements ChatRoomMessageModel {
  const factory _ChatRoomMessageModel(
      {required final String content,
      required final DateTime createdAt,
      required final ChatRoomUserModel sender}) = _$_ChatRoomMessageModel;

  factory _ChatRoomMessageModel.fromJson(Map<String, dynamic> json) =
      _$_ChatRoomMessageModel.fromJson;

  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  ChatRoomUserModel get sender;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomMessageModelCopyWith<_$_ChatRoomMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoomUserModel _$ChatRoomUserModelFromJson(Map<String, dynamic> json) {
  return _ChatRoomUserModel.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomUserModelCopyWith<ChatRoomUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomUserModelCopyWith<$Res> {
  factory $ChatRoomUserModelCopyWith(
          ChatRoomUserModel value, $Res Function(ChatRoomUserModel) then) =
      _$ChatRoomUserModelCopyWithImpl<$Res, ChatRoomUserModel>;
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class _$ChatRoomUserModelCopyWithImpl<$Res, $Val extends ChatRoomUserModel>
    implements $ChatRoomUserModelCopyWith<$Res> {
  _$ChatRoomUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatRoomUserModelCopyWith<$Res>
    implements $ChatRoomUserModelCopyWith<$Res> {
  factory _$$_ChatRoomUserModelCopyWith(_$_ChatRoomUserModel value,
          $Res Function(_$_ChatRoomUserModel) then) =
      __$$_ChatRoomUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class __$$_ChatRoomUserModelCopyWithImpl<$Res>
    extends _$ChatRoomUserModelCopyWithImpl<$Res, _$_ChatRoomUserModel>
    implements _$$_ChatRoomUserModelCopyWith<$Res> {
  __$$_ChatRoomUserModelCopyWithImpl(
      _$_ChatRoomUserModel _value, $Res Function(_$_ChatRoomUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$_ChatRoomUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoomUserModel implements _ChatRoomUserModel {
  const _$_ChatRoomUserModel({required this.id, required this.username});

  factory _$_ChatRoomUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomUserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;

  @override
  String toString() {
    return 'ChatRoomUserModel(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatRoomUserModelCopyWith<_$_ChatRoomUserModel> get copyWith =>
      __$$_ChatRoomUserModelCopyWithImpl<_$_ChatRoomUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomUserModelToJson(
      this,
    );
  }
}

abstract class _ChatRoomUserModel implements ChatRoomUserModel {
  const factory _ChatRoomUserModel(
      {required final String id,
      required final String username}) = _$_ChatRoomUserModel;

  factory _ChatRoomUserModel.fromJson(Map<String, dynamic> json) =
      _$_ChatRoomUserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomUserModelCopyWith<_$_ChatRoomUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
