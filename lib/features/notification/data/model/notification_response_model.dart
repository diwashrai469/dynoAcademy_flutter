// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response_model.freezed.dart';
part 'notification_response_model.g.dart';

@freezed
class NotificationResponseModel with _$NotificationResponseModel {
  factory NotificationResponseModel({
    String? status,
    @JsonKey(name: "currently_displayed_records_on_page")
    int? currentlyDisplayedRecordsOnPage,
    @JsonKey(name: "total_pages") int? totalPages,
    @JsonKey(name: "max_allowed_records_per_page")
    int? maxAllowedRecordsPerPage,
    @JsonKey(name: "total_records") int? totalRecords,
    @JsonKey(name: "filters_applied") bool? filtersApplied,
    List<Data>? data,
  }) = _NotificationResponseModel;

  factory NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "notification_text") String? notificationText,
    String? link,
    bool? seen,
    bool? active,
    @JsonKey(name: "button_text") String? buttonText,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: "_v") int? iV,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
