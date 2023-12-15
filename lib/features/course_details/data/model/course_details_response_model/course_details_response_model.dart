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
    String? id,
    MentorId? mentor_id,
    String? course_name,
    int? course_duration,
    String? course_info,
    String? course_description,
    int? students_enrolled,
    double? rating,
    int? raters,
    int? cost,
    int? lessons,
    String? skillLevel,
    String? language,
    bool? active,
    bool? approved,
    String? course_created,
    String? createdAt,
    String? updatedAt,
    int? iV,
    String? thumbnail,
    String? course_slug,
    int? views,
    String? certificate_learning,
    int? high_cost,
    String? discount_price_ends,
  }) = _CourseData;

  factory CourseData.fromJson(Map<String, dynamic> json) =>
      _$CourseDataFromJson(json);
}

@freezed
class MentorId with _$MentorId {
  const factory MentorId({
    String? id,
    String? name,
  }) = _MentorId;

  factory MentorId.fromJson(Map<String, dynamic> json) =>
      _$MentorIdFromJson(json);
}
