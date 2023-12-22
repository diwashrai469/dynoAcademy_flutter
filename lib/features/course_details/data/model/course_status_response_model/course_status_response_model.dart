// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_status_response_model.freezed.dart';
part 'course_status_response_model.g.dart';

@freezed
class CourseStatusResponseModel with _$CourseStatusResponseModel {
  factory CourseStatusResponseModel({
    String? status,
    Data? data,
  }) = _CourseStatusResponseModel;

  factory CourseStatusResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseStatusResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "course_id") String? courseId,
    @JsonKey(name: "course_status") String? courseStatus,
    bool? active,
    @JsonKey(name: "lesson_completed") List<String>? lessonCompleted,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: "_v") int? iV,
    @JsonKey(name: "last_plated_lesson_id") String? lastPlayedLessonId,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
