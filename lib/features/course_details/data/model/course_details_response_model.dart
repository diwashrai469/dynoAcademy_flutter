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
    String? sId,
    MentorId? mentorId,
    String? courseName,
    int? courseDuration,
    String? courseInfo,
    String? courseDescription,
    int? studentsEnrolled,
    double? rating,
    int? raters,
    int? cost,
    int? lessons,
    String? skillLevel,
    String? language,
    bool? active,
    bool? approved,
    String? courseCreated,
    String? createdAt,
    String? updatedAt,
    int? iV,
    String? thumbnail,
    String? courseSlug,
    int? views,
    String? certificateLearning,
    int? highCost,
    String? discountPriceEnds,
  }) = _CourseData;

  factory CourseData.fromJson(Map<String, dynamic> json) =>
      _$CourseDataFromJson(json);
}

@freezed
class MentorId with _$MentorId {
  const factory MentorId({
    String? sId,
    String? name,
  }) = _MentorId;

  factory MentorId.fromJson(Map<String, dynamic> json) =>
      _$MentorIdFromJson(json);
}
