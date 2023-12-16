// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'course_response_model.freezed.dart';
// part 'course_response_model.g.dart';

// @freezed
// class CourseResponseModel with _$CourseResponseModel {
//   factory CourseResponseModel({
//     PageProps? pageProps,
//     bool? bNSSP,
//   }) = _CourseResponseModel;

//   factory CourseResponseModel.fromJson(Map<String, dynamic> json) =>
//       _$CourseResponseModelFromJson(json);
// }

// @freezed
// class PageProps with _$PageProps {
//   factory PageProps({
//     CourseData? courseData,
//   }) = _PageProps;

//   factory PageProps.fromJson(Map<String, dynamic> json) =>
//       _$PagePropsFromJson(json);
// }

// @freezed
// class CourseData with _$CourseData {
//   factory CourseData({
//     String? status,
//     num? currentlyDisplayedRecordsOnPage,
//     num? totalPages,
//     num? maxAllowedRecordsPerPage,
//     num? totalRecords,
//     List<Data>? data,
//   }) = _CourseData;

//   factory CourseData.fromJson(Map<String, dynamic> json) =>
//       _$CourseDataFromJson(json);
// }

// @freezed
// class Data with _$Data {
//   factory Data({
//     String? sId,
//     MentorId? mentorId,
//     String? courseName,
//     num? courseDuration,
//     String? courseInfo,
//     String? courseDescription,
//     num? studentsEnrolled,
//     num? rating,
//     num? raters,
//     num? cost,
//     num? lessons,
//     String? skillLevel,
//     String? language,
//     bool? active,
//     bool? approved,
//     String? courseCreated,
//     String? createdAt,
//     String? updatedAt,
//     num? iV,
//     String? thumbnail,
//     String? courseSlug,
//     num? views,
//     String? certificateLearning,
//     num? highCost,
//     String? discountPriceEnds,
//     bool? isUnderDevelopment,
//   }) = _Data;

//   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }

// @freezed
// class MentorId with _$MentorId {
//   factory MentorId({
//     String? sId,
//     String? name,
//   }) = _MentorId;

//   factory MentorId.fromJson(Map<String, dynamic> json) =>
//       _$MentorIdFromJson(json);
// }

class CourseResponseModel {
  PageProps? pageProps;
  bool? bNSSP;

  CourseResponseModel({this.pageProps, this.bNSSP});

  CourseResponseModel.fromJson(Map<String, dynamic> json) {
    pageProps = json['pageProps'] != null
        ? PageProps.fromJson(json['pageProps'])
        : null;
    bNSSP = json['__N_SSP'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pageProps != null) {
      data['pageProps'] = pageProps!.toJson();
    }
    data['__N_SSP'] = bNSSP;
    return data;
  }
}

class PageProps {
  CourseData? courseData;

  PageProps({this.courseData});

  PageProps.fromJson(Map<String, dynamic> json) {
    courseData = json['courseData'] != null
        ? CourseData.fromJson(json['courseData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (courseData != null) {
      data['courseData'] = courseData!.toJson();
    }
    return data;
  }
}

class CourseData {
  String? status;
  num? currentlyDisplayedRecordsOnPage;
  num? totalPages;
  num? maxAllowedRecordsPerPage;
  num? totalRecords;
  List<Data>? data;

  CourseData(
      {this.status,
      this.currentlyDisplayedRecordsOnPage,
      this.totalPages,
      this.maxAllowedRecordsPerPage,
      this.totalRecords,
      this.data});

  CourseData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    currentlyDisplayedRecordsOnPage =
        json['currently_displayed_records_on_page'];
    totalPages = json['total_pages'];
    maxAllowedRecordsPerPage = json['max_allowed_records_per_page'];
    totalRecords = json['total_records'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['currently_displayed_records_on_page'] =
        currentlyDisplayedRecordsOnPage;
    data['total_pages'] = totalPages;
    data['max_allowed_records_per_page'] = maxAllowedRecordsPerPage;
    data['total_records'] = totalRecords;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  MentorId? mentorId;
  String? courseName;
  num? courseDuration;
  String? courseInfo;
  String? courseDescription;
  num? studentsEnrolled;
  num? rating;
  num? raters;
  num? cost;
  num? lessons;
  String? skillLevel;
  String? language;
  bool? active;
  bool? approved;
  String? courseCreated;
  String? createdAt;
  String? updatedAt;
  num? iV;
  String? thumbnail;
  String? courseSlug;
  num? views;
  String? certificateLearning;
  num? highCost;
  String? discountPriceEnds;
  bool? isUnderDevelopment;

  Data(
      {this.sId,
      this.mentorId,
      this.courseName,
      this.courseDuration,
      this.courseInfo,
      this.courseDescription,
      this.studentsEnrolled,
      this.rating,
      this.raters,
      this.cost,
      this.lessons,
      this.skillLevel,
      this.language,
      this.active,
      this.approved,
      this.courseCreated,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.thumbnail,
      this.courseSlug,
      this.views,
      this.certificateLearning,
      this.highCost,
      this.discountPriceEnds,
      this.isUnderDevelopment});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    mentorId =
        json['mentor_id'] != null ? MentorId.fromJson(json['mentor_id']) : null;
    courseName = json['course_name'];
    courseDuration = json['course_duration'];
    courseInfo = json['course_info'];
    courseDescription = json['course_description'];
    studentsEnrolled = json['students_enrolled'];
    rating = json['rating'];
    raters = json['raters'];
    cost = json['cost'];
    lessons = json['lessons'];
    skillLevel = json['skill_level'];
    language = json['language'];
    active = json['active'];
    approved = json['approved'];
    courseCreated = json['course_created'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    thumbnail = json['thumbnail'];
    courseSlug = json['course_slug'];
    views = json['views'];
    certificateLearning = json['certificate_learning'];
    highCost = json['high_cost'];
    discountPriceEnds = json['discount_price_ends'];
    isUnderDevelopment = json['is_under_development'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    if (mentorId != null) {
      data['mentor_id'] = mentorId!.toJson();
    }
    data['course_name'] = courseName;
    data['course_duration'] = courseDuration;
    data['course_info'] = courseInfo;
    data['course_description'] = courseDescription;
    data['students_enrolled'] = studentsEnrolled;
    data['rating'] = rating;
    data['raters'] = raters;
    data['cost'] = cost;
    data['lessons'] = lessons;
    data['skill_level'] = skillLevel;
    data['language'] = language;
    data['active'] = active;
    data['approved'] = approved;
    data['course_created'] = courseCreated;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['thumbnail'] = thumbnail;
    data['course_slug'] = courseSlug;
    data['views'] = views;
    data['certificate_learning'] = certificateLearning;
    data['high_cost'] = highCost;
    data['discount_price_ends'] = discountPriceEnds;
    data['is_under_development'] = isUnderDevelopment;
    return data;
  }
}

class MentorId {
  String? sId;
  String? name;

  MentorId({this.sId, this.name});

  MentorId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    return data;
  }
}
