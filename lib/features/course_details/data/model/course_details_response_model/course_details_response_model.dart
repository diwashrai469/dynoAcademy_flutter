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
    @JsonKey(name: "course_enrolled") num? studentsEnrolled,
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

// class CourseDetailsResponseModel {
//   PageProps? pageProps;
//   bool? bNSSP;

//   CourseDetailsResponseModel({this.pageProps, this.bNSSP});

//   CourseDetailsResponseModel.fromJson(Map<String, dynamic> json) {
//     pageProps = json['pageProps'] != null
//         ? PageProps.fromJson(json['pageProps'])
//         : null;
//     bNSSP = json['__N_SSP'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (pageProps != null) {
//       data['pageProps'] = pageProps!.toJson();
//     }
//     data['__N_SSP'] = bNSSP;
//     return data;
//   }
// }

// class PageProps {
//   CourseData? courseData;
//   String? successData;

//   PageProps({this.courseData, this.successData});

//   PageProps.fromJson(Map<String, dynamic> json) {
//     courseData = json['courseData'] != null
//         ? CourseData.fromJson(json['courseData'])
//         : null;
//     successData = json['successData'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (courseData != null) {
//       data['courseData'] = courseData!.toJson();
//     }
//     data['successData'] = successData;
//     return data;
//   }
// }

// class CourseData {
//   String? sId;
//   MentorId? mentorId;
//   String? courseName;
//   num? courseDuration;
//   String? courseInfo;
//   String? courseDescription;
//   num? studentsEnrolled;
//   num? rating;
//   num? raters;
//   num? cost;
//   num? lessons;
//   String? skillLevel;
//   String? language;
//   bool? active;
//   bool? approved;
//   String? courseCreated;
//   String? createdAt;
//   String? updatedAt;
//   num? iV;
//   String? thumbnail;
//   String? courseSlug;
//   num? views;
//   String? certificateLearning;
//   num? highCost;
//   String? discountPriceEnds;

//   CourseData(
//       {this.sId,
//       this.mentorId,
//       this.courseName,
//       this.courseDuration,
//       this.courseInfo,
//       this.courseDescription,
//       this.studentsEnrolled,
//       this.rating,
//       this.raters,
//       this.cost,
//       this.lessons,
//       this.skillLevel,
//       this.language,
//       this.active,
//       this.approved,
//       this.courseCreated,
//       this.createdAt,
//       this.updatedAt,
//       this.iV,
//       this.thumbnail,
//       this.courseSlug,
//       this.views,
//       this.certificateLearning,
//       this.highCost,
//       this.discountPriceEnds});

//   CourseData.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     mentorId =
//         json['mentor_id'] != null ? MentorId.fromJson(json['mentor_id']) : null;
//     courseName = json['course_name'];
//     courseDuration = json['course_duration'];
//     courseInfo = json['course_info'];
//     courseDescription = json['course_description'];
//     studentsEnrolled = json['students_enrolled'];
//     rating = json['rating'];
//     raters = json['raters'];
//     cost = json['cost'];
//     lessons = json['lessons'];
//     skillLevel = json['skill_level'];
//     language = json['language'];
//     active = json['active'];
//     approved = json['approved'];
//     courseCreated = json['course_created'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//     thumbnail = json['thumbnail'];
//     courseSlug = json['course_slug'];
//     views = json['views'];
//     certificateLearning = json['certificate_learning'];
//     highCost = json['high_cost'];
//     discountPriceEnds = json['discount_price_ends'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['_id'] = sId;
//     if (mentorId != null) {
//       data['mentor_id'] = mentorId!.toJson();
//     }
//     data['course_name'] = courseName;
//     data['course_duration'] = courseDuration;
//     data['course_info'] = courseInfo;
//     data['course_description'] = courseDescription;
//     data['students_enrolled'] = studentsEnrolled;
//     data['rating'] = rating;
//     data['raters'] = raters;
//     data['cost'] = cost;
//     data['lessons'] = lessons;
//     data['skill_level'] = skillLevel;
//     data['language'] = language;
//     data['active'] = active;
//     data['approved'] = approved;
//     data['course_created'] = courseCreated;
//     data['createdAt'] = createdAt;
//     data['updatedAt'] = updatedAt;
//     data['__v'] = iV;
//     data['thumbnail'] = thumbnail;
//     data['course_slug'] = courseSlug;
//     data['views'] = views;
//     data['certificate_learning'] = certificateLearning;
//     data['high_cost'] = highCost;
//     data['discount_price_ends'] = discountPriceEnds;
//     return data;
//   }
// }

// class MentorId {
//   String? sId;
//   String? name;

//   MentorId({this.sId, this.name});

//   MentorId.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['_id'] = sId;
//     data['name'] = name;
//     return data;
//   }
// }
