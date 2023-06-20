// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<MessageModel> messages,
      String? userId});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? messages = null,
    Object? userId = freezed,
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
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$$_ChatModelCopyWith(
          _$_ChatModel value, $Res Function(_$_ChatModel) then) =
      __$$_ChatModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<MessageModel> messages,
      String? userId});
}

/// @nodoc
class __$$_ChatModelCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$_ChatModel>
    implements _$$_ChatModelCopyWith<$Res> {
  __$$_ChatModelCopyWithImpl(
      _$_ChatModel _value, $Res Function(_$_ChatModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? messages = null,
    Object? userId = freezed,
  }) {
    return _then(_$_ChatModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatModel implements _ChatModel {
  const _$_ChatModel(
      {required this.isLoading,
      required this.hasError,
      required final List<MessageModel> messages,
      required this.userId})
      : _messages = messages;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? userId;

  @override
  String toString() {
    return 'ChatModel(isLoading: $isLoading, hasError: $hasError, messages: $messages, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_messages), userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      __$$_ChatModelCopyWithImpl<_$_ChatModel>(this, _$identity);
}

abstract class _ChatModel implements ChatModel {
  const factory _ChatModel(
      {required final bool isLoading,
      required final bool hasError,
      required final List<MessageModel> messages,
      required final String? userId}) = _$_ChatModel;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<MessageModel> get messages;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  DateTime get createdAt => throw _privateConstructorUsedError;
  MessageUserModel get sender => throw _privateConstructorUsedError;
  MessageUserModel get recipient => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isOwnMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {DateTime createdAt,
      MessageUserModel sender,
      MessageUserModel recipient,
      String content,
      bool isOwnMessage});

  $MessageUserModelCopyWith<$Res> get sender;
  $MessageUserModelCopyWith<$Res> get recipient;
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? sender = null,
    Object? recipient = null,
    Object? content = null,
    Object? isOwnMessage = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MessageUserModel,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as MessageUserModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isOwnMessage: null == isOwnMessage
          ? _value.isOwnMessage
          : isOwnMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageUserModelCopyWith<$Res> get sender {
    return $MessageUserModelCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageUserModelCopyWith<$Res> get recipient {
    return $MessageUserModelCopyWith<$Res>(_value.recipient, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$_MessageModelCopyWith(
          _$_MessageModel value, $Res Function(_$_MessageModel) then) =
      __$$_MessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      MessageUserModel sender,
      MessageUserModel recipient,
      String content,
      bool isOwnMessage});

  @override
  $MessageUserModelCopyWith<$Res> get sender;
  @override
  $MessageUserModelCopyWith<$Res> get recipient;
}

/// @nodoc
class __$$_MessageModelCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$_MessageModel>
    implements _$$_MessageModelCopyWith<$Res> {
  __$$_MessageModelCopyWithImpl(
      _$_MessageModel _value, $Res Function(_$_MessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? sender = null,
    Object? recipient = null,
    Object? content = null,
    Object? isOwnMessage = null,
  }) {
    return _then(_$_MessageModel(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MessageUserModel,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as MessageUserModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isOwnMessage: null == isOwnMessage
          ? _value.isOwnMessage
          : isOwnMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageModel implements _MessageModel {
  const _$_MessageModel(
      {required this.createdAt,
      required this.sender,
      required this.recipient,
      required this.content,
      this.isOwnMessage = false});

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageModelFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final MessageUserModel sender;
  @override
  final MessageUserModel recipient;
  @override
  final String content;
  @override
  @JsonKey()
  final bool isOwnMessage;

  @override
  String toString() {
    return 'MessageModel(createdAt: $createdAt, sender: $sender, recipient: $recipient, content: $content, isOwnMessage: $isOwnMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageModel &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isOwnMessage, isOwnMessage) ||
                other.isOwnMessage == isOwnMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, sender, recipient, content, isOwnMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      __$$_MessageModelCopyWithImpl<_$_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageModelToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required final DateTime createdAt,
      required final MessageUserModel sender,
      required final MessageUserModel recipient,
      required final String content,
      final bool isOwnMessage}) = _$_MessageModel;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override
  DateTime get createdAt;
  @override
  MessageUserModel get sender;
  @override
  MessageUserModel get recipient;
  @override
  String get content;
  @override
  bool get isOwnMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageUserModel _$MessageUserModelFromJson(Map<String, dynamic> json) {
  return _MessageUserModel.fromJson(json);
}

/// @nodoc
mixin _$MessageUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageUserModelCopyWith<MessageUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageUserModelCopyWith<$Res> {
  factory $MessageUserModelCopyWith(
          MessageUserModel value, $Res Function(MessageUserModel) then) =
      _$MessageUserModelCopyWithImpl<$Res, MessageUserModel>;
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class _$MessageUserModelCopyWithImpl<$Res, $Val extends MessageUserModel>
    implements $MessageUserModelCopyWith<$Res> {
  _$MessageUserModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_MessageUserModelCopyWith<$Res>
    implements $MessageUserModelCopyWith<$Res> {
  factory _$$_MessageUserModelCopyWith(
          _$_MessageUserModel value, $Res Function(_$_MessageUserModel) then) =
      __$$_MessageUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class __$$_MessageUserModelCopyWithImpl<$Res>
    extends _$MessageUserModelCopyWithImpl<$Res, _$_MessageUserModel>
    implements _$$_MessageUserModelCopyWith<$Res> {
  __$$_MessageUserModelCopyWithImpl(
      _$_MessageUserModel _value, $Res Function(_$_MessageUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$_MessageUserModel(
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
class _$_MessageUserModel implements _MessageUserModel {
  const _$_MessageUserModel({required this.id, required this.username});

  factory _$_MessageUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageUserModelFromJson(json);

  @override
  final String id;
  @override
  final String username;

  @override
  String toString() {
    return 'MessageUserModel(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageUserModel &&
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
  _$$_MessageUserModelCopyWith<_$_MessageUserModel> get copyWith =>
      __$$_MessageUserModelCopyWithImpl<_$_MessageUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageUserModelToJson(
      this,
    );
  }
}

abstract class _MessageUserModel implements MessageUserModel {
  const factory _MessageUserModel(
      {required final String id,
      required final String username}) = _$_MessageUserModel;

  factory _MessageUserModel.fromJson(Map<String, dynamic> json) =
      _$_MessageUserModel.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_MessageUserModelCopyWith<_$_MessageUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessageDto _$SendMessageDtoFromJson(Map<String, dynamic> json) {
  return _SendMessageDto.fromJson(json);
}

/// @nodoc
mixin _$SendMessageDto {
  String get roomId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get recipientId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageDtoCopyWith<SendMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageDtoCopyWith<$Res> {
  factory $SendMessageDtoCopyWith(
          SendMessageDto value, $Res Function(SendMessageDto) then) =
      _$SendMessageDtoCopyWithImpl<$Res, SendMessageDto>;
  @useResult
  $Res call(
      {String roomId, String senderId, String recipientId, String content});
}

/// @nodoc
class _$SendMessageDtoCopyWithImpl<$Res, $Val extends SendMessageDto>
    implements $SendMessageDtoCopyWith<$Res> {
  _$SendMessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendMessageDtoCopyWith<$Res>
    implements $SendMessageDtoCopyWith<$Res> {
  factory _$$_SendMessageDtoCopyWith(
          _$_SendMessageDto value, $Res Function(_$_SendMessageDto) then) =
      __$$_SendMessageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomId, String senderId, String recipientId, String content});
}

/// @nodoc
class __$$_SendMessageDtoCopyWithImpl<$Res>
    extends _$SendMessageDtoCopyWithImpl<$Res, _$_SendMessageDto>
    implements _$$_SendMessageDtoCopyWith<$Res> {
  __$$_SendMessageDtoCopyWithImpl(
      _$_SendMessageDto _value, $Res Function(_$_SendMessageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
  }) {
    return _then(_$_SendMessageDto(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendMessageDto implements _SendMessageDto {
  const _$_SendMessageDto(
      {required this.roomId,
      required this.senderId,
      required this.recipientId,
      required this.content});

  factory _$_SendMessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_SendMessageDtoFromJson(json);

  @override
  final String roomId;
  @override
  final String senderId;
  @override
  final String recipientId;
  @override
  final String content;

  @override
  String toString() {
    return 'SendMessageDto(roomId: $roomId, senderId: $senderId, recipientId: $recipientId, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageDto &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, roomId, senderId, recipientId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageDtoCopyWith<_$_SendMessageDto> get copyWith =>
      __$$_SendMessageDtoCopyWithImpl<_$_SendMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageDtoToJson(
      this,
    );
  }
}

abstract class _SendMessageDto implements SendMessageDto {
  const factory _SendMessageDto(
      {required final String roomId,
      required final String senderId,
      required final String recipientId,
      required final String content}) = _$_SendMessageDto;

  factory _SendMessageDto.fromJson(Map<String, dynamic> json) =
      _$_SendMessageDto.fromJson;

  @override
  String get roomId;
  @override
  String get senderId;
  @override
  String get recipientId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageDtoCopyWith<_$_SendMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatControllerParameters {
  MessageItemModel get item => throw _privateConstructorUsedError;
  String get otherUserId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatControllerParametersCopyWith<ChatControllerParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatControllerParametersCopyWith<$Res> {
  factory $ChatControllerParametersCopyWith(ChatControllerParameters value,
          $Res Function(ChatControllerParameters) then) =
      _$ChatControllerParametersCopyWithImpl<$Res, ChatControllerParameters>;
  @useResult
  $Res call({MessageItemModel item, String otherUserId});

  $MessageItemModelCopyWith<$Res> get item;
}

/// @nodoc
class _$ChatControllerParametersCopyWithImpl<$Res,
        $Val extends ChatControllerParameters>
    implements $ChatControllerParametersCopyWith<$Res> {
  _$ChatControllerParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? otherUserId = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MessageItemModel,
      otherUserId: null == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageItemModelCopyWith<$Res> get item {
    return $MessageItemModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatControllerParametersCopyWith<$Res>
    implements $ChatControllerParametersCopyWith<$Res> {
  factory _$$_ChatControllerParametersCopyWith(
          _$_ChatControllerParameters value,
          $Res Function(_$_ChatControllerParameters) then) =
      __$$_ChatControllerParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageItemModel item, String otherUserId});

  @override
  $MessageItemModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ChatControllerParametersCopyWithImpl<$Res>
    extends _$ChatControllerParametersCopyWithImpl<$Res,
        _$_ChatControllerParameters>
    implements _$$_ChatControllerParametersCopyWith<$Res> {
  __$$_ChatControllerParametersCopyWithImpl(_$_ChatControllerParameters _value,
      $Res Function(_$_ChatControllerParameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? otherUserId = null,
  }) {
    return _then(_$_ChatControllerParameters(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MessageItemModel,
      otherUserId: null == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatControllerParameters implements _ChatControllerParameters {
  const _$_ChatControllerParameters(
      {required this.item, required this.otherUserId});

  @override
  final MessageItemModel item;
  @override
  final String otherUserId;

  @override
  String toString() {
    return 'ChatControllerParameters(item: $item, otherUserId: $otherUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatControllerParameters &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.otherUserId, otherUserId) ||
                other.otherUserId == otherUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, otherUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatControllerParametersCopyWith<_$_ChatControllerParameters>
      get copyWith => __$$_ChatControllerParametersCopyWithImpl<
          _$_ChatControllerParameters>(this, _$identity);
}

abstract class _ChatControllerParameters implements ChatControllerParameters {
  const factory _ChatControllerParameters(
      {required final MessageItemModel item,
      required final String otherUserId}) = _$_ChatControllerParameters;

  @override
  MessageItemModel get item;
  @override
  String get otherUserId;
  @override
  @JsonKey(ignore: true)
  _$$_ChatControllerParametersCopyWith<_$_ChatControllerParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageItemModel {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageItemModelCopyWith<MessageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageItemModelCopyWith<$Res> {
  factory $MessageItemModelCopyWith(
          MessageItemModel value, $Res Function(MessageItemModel) then) =
      _$MessageItemModelCopyWithImpl<$Res, MessageItemModel>;
  @useResult
  $Res call({String id, String ownerId});
}

/// @nodoc
class _$MessageItemModelCopyWithImpl<$Res, $Val extends MessageItemModel>
    implements $MessageItemModelCopyWith<$Res> {
  _$MessageItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageItemModelCopyWith<$Res>
    implements $MessageItemModelCopyWith<$Res> {
  factory _$$_MessageItemModelCopyWith(
          _$_MessageItemModel value, $Res Function(_$_MessageItemModel) then) =
      __$$_MessageItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String ownerId});
}

/// @nodoc
class __$$_MessageItemModelCopyWithImpl<$Res>
    extends _$MessageItemModelCopyWithImpl<$Res, _$_MessageItemModel>
    implements _$$_MessageItemModelCopyWith<$Res> {
  __$$_MessageItemModelCopyWithImpl(
      _$_MessageItemModel _value, $Res Function(_$_MessageItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
  }) {
    return _then(_$_MessageItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageItemModel implements _MessageItemModel {
  const _$_MessageItemModel({required this.id, required this.ownerId});

  @override
  final String id;
  @override
  final String ownerId;

  @override
  String toString() {
    return 'MessageItemModel(id: $id, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, ownerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageItemModelCopyWith<_$_MessageItemModel> get copyWith =>
      __$$_MessageItemModelCopyWithImpl<_$_MessageItemModel>(this, _$identity);
}

abstract class _MessageItemModel implements MessageItemModel {
  const factory _MessageItemModel(
      {required final String id,
      required final String ownerId}) = _$_MessageItemModel;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  @JsonKey(ignore: true)
  _$$_MessageItemModelCopyWith<_$_MessageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
