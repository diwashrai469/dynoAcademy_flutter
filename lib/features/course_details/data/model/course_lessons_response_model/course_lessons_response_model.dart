// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_lessons_response_model.freezed.dart';
part 'course_lessons_response_model.g.dart';

@freezed
class CourseLessonsResponseModel with _$CourseLessonsResponseModel {
  factory CourseLessonsResponseModel({
    String? status,
    List<Data>? data,
  }) = _CourseLessonsResponseModel;

  factory CourseLessonsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseLessonsResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "course_id") String? courseId,
    @JsonKey(name: "section_name") String? sectionName,
    @JsonKey(name: "section_index") int? sectionIndex,
    List<Lessons>? lessons,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Lessons with _$Lessons {
  factory Lessons({
    @JsonKey(name: "_id") String? sId,
    @JsonKey(name: "course_id") String? courseId,
    @JsonKey(name: "lesson_name") String? lessonName,
    @JsonKey(name: "lesson_index") double? lessonIndex,
    @JsonKey(name: "lesson_type") String? lessonType,
    @JsonKey(name: "lesson_video_url") String? lessonVideoUrl,
    @JsonKey(name: "lesson_premium") bool? lessonPremium,
    @JsonKey(name: "lesson_duration_minutes") double? lessonDurationMinutes,
    bool? active,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: "_v") int? iV,
    @JsonKey(name: "section_id") String? sectionId,
    @JsonKey(name: "lesson_html") String? lessonHtml,
  }) = _Lessons;

  factory Lessons.fromJson(Map<String, dynamic> json) =>
      _$LessonsFromJson(json);
}
