// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_details_response_model.freezed.dart';
part 'course_details_response_model.g.dart';

@freezed
class CourseDetailsResponseModel with _$CourseDetailsResponseModel {
  const factory CourseDetailsResponseModel({
    PageProps? pageProps,
    bool? bNSSP,
  }) = _CourseDetailsResponseModel;

  factory CourseDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailsResponseModelFromJson(json);
}

@freezed
class PageProps with _$PageProps {
  const factory PageProps({
    CourseData? courseData,
    String? successData,
  }) = _PageProps;

  factory PageProps.fromJson(Map<String, dynamic> json) =>
      _$PagePropsFromJson(json);
}

@freezed
class CourseData with _$CourseData {
  const factory CourseData({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "mentor_id") MentorId? mentorId,
    @JsonKey(name: "course_name") String? courseName,
    @JsonKey(name: "course_duration") num? courseDuration,
    @JsonKey(name: "course_info") String? courseInfo,
    @JsonKey(name: "course_description") String? courseDescription,
    @JsonKey(name: "students_enrolled") num? studentsEnrolled,
    num? rating,
    num? raters,
    num? cost,
    num? lessons,
    @JsonKey(name: "skill_level") String? skillLevel,
    String? language,
    bool? active,
    bool? approved,
    @JsonKey(name: "course_created") String? courseCreated,
    String? createdAt,
    String? updatedAt,
    num? iV,
    String? thumbnail,
    @JsonKey(name: "course_slug") String? courseSlug,
    num? views,
    @JsonKey(name: "certificate_learning") String? certificateLearning,
    num? highCost,
    @JsonKey(name: "discount_price_ends") String? discountPriceEnds,
  }) = _CourseData;

  factory CourseData.fromJson(Map<String, dynamic> json) =>
      _$CourseDataFromJson(json);
}

@freezed
class MentorId with _$MentorId {
  const factory MentorId({
    @JsonKey(name: "_id") String? id,
    String? name,
  }) = _MentorId;

  factory MentorId.fromJson(Map<String, dynamic> json) =>
      _$MentorIdFromJson(json);
}
