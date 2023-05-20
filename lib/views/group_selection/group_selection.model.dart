import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_selection.model.freezed.dart';
part 'group_selection.model.g.dart';


@freezed
class GroupModel with _$GroupModel {
  factory GroupModel({
    required String name,
    required String description,
    required String creatorID,
  }) = _GroupModel;
  factory GroupModel.fromJson(Map<String, dynamic> json) => _$GroupModelFromJson(json);
}