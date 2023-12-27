// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_courses_response_model.freezed.dart';
part 'my_courses_response_model.g.dart';

@freezed
class MyCoursesResponseModel with _$MyCoursesResponseModel {
  const factory MyCoursesResponseModel({
    String? status,
    List<Data>? data,
  }) = _MyCoursesResponseModel;

  factory MyCoursesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MyCoursesResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "course_id") CourseId? courseId,
    @JsonKey(name: "course_status") String? courseStatus,
    bool? active,
    @JsonKey(name: "lesson_completed") List<String>? lessonCompleted,
    String? createdAt,
    String? updatedAt,
    int? iV,
    @JsonKey(name: "expiry_alerted") bool? expiryAlerted,
    @JsonKey(name: "expiry_alerted_time") String? expiryAlertedTime,
    @JsonKey(name: "last_played_lesson_id") String? lastPlayedLessonId,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class CourseId with _$CourseId {
  const factory CourseId({
    @JsonKey(name: "s3_folder") String? s3Folder,
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "mentor_id") String? mentorId,
    @JsonKey(name: "course_name") String? courseName,
    @JsonKey(name: "course_duration") int? courseDuration,
    @JsonKey(name: "course_info") String? courseInfo,
    @JsonKey(name: "course_description") String? courseDescription,
    @JsonKey(name: "students_enrolled") int? studentsEnrolled,
    double? rating,
    int? raters,
    int? cost,
    int? lessons,
    @JsonKey(name: "skill_level") String? skillLevel,
    String? language,
    bool? active,
    bool? approved,
    @JsonKey(name: "course_created") String? courseCreated,
    String? createdAt,
    String? updatedAt,
    int? iV,
    String? thumbnail,
    @JsonKey(name: "course_slug") String? courseSlug,
    int? views,
    @JsonKey(name: "certificate_learning") String? certificateLearning,
    @JsonKey(name: "high_cost") int? highCost,
    @JsonKey(name: "is_under_development") bool? isUnderDevelopment,
    @JsonKey(name: "discount_price_ends") String? discountPriceEnds,
    String? id,
  }) = _CourseId;

  factory CourseId.fromJson(Map<String, dynamic> json) =>
      _$CourseIdFromJson(json);
}
