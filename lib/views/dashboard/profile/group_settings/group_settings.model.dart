import "package:freezed_annotation/freezed_annotation.dart";

part "group_settings.model.freezed.dart";

@freezed
class GroupSettingsModel with _$GroupSettingsModel {
  const factory GroupSettingsModel({
    required bool isLoading,
    required bool hasError,
  }) = _GroupSettingsModel;
}
