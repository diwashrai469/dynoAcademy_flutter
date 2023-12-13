import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_response_model.freezed.dart';
part 'course_response_model.g.dart';

@freezed
class CourseResponseModel with _$CourseResponseModel {
  factory CourseResponseModel({
    PageProps? pageProps,
    bool? bNSSP,
  }) = _CourseResponseModel;

  factory CourseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseModelFromJson(json);
}

@freezed
class PageProps with _$PageProps {
  factory PageProps({
    CourseData? courseData,
  }) = _PageProps;

  factory PageProps.fromJson(Map<String, dynamic> json) =>
      _$PagePropsFromJson(json);
}

@freezed
class CourseData with _$CourseData {
  factory CourseData({
    String? status,
    num? currentlyDisplayedRecordsOnPage,
    num? totalPages,
    num? maxAllowedRecordsPerPage,
    num? totalRecords,
    List<Data>? data,
  }) = _CourseData;

  factory CourseData.fromJson(Map<String, dynamic> json) =>
      _$CourseDataFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    String? sId,
    MentorId? mentorId,
    String? courseName,
    num? courseDuration,
    String? courseInfo,
    String? courseDescription,
    num? studentsEnrolled,
    num? rating,
    num? raters,
    num? cost,
    num? lessons,
    String? skillLevel,
    String? language,
    bool? active,
    bool? approved,
    String? courseCreated,
    String? createdAt,
    String? updatedAt,
    num? iV,
    String? thumbnail,
    String? courseSlug,
    num? views,
    String? certificateLearning,
    num? highCost,
    String? discountPriceEnds,
    bool? isUnderDevelopment,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class MentorId with _$MentorId {
  factory MentorId({
    String? sId,
    String? name,
  }) = _MentorId;

  factory MentorId.fromJson(Map<String, dynamic> json) =>
      _$MentorIdFromJson(json);
}
