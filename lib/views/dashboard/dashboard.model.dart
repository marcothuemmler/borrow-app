import "package:freezed_annotation/freezed_annotation.dart";

part "dashboard.model.freezed.dart";

@freezed
class DashboardModel with _$DashboardModel {
  factory DashboardModel({
    required int currentIndex,
    required String? currentTitle,
    required String? selectedCategory,
    @Default([]) List<String> categories,
  }) = _DashboardModel;
}
