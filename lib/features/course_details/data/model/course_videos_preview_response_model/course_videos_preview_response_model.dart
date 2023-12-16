// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'course_videos_preview_response_model.freezed.dart';
// part 'course_videos_preview_response_model.g.dart';

// @freezed
// class CourseVideosPreviewResponseModel with _$CourseVideosPreviewResponseModel {
//   factory CourseVideosPreviewResponseModel({
//     String? status,
//     num? currently_displayed_records_on_page,
//     num? total_pages,
//     num? max_allowed_records_per_page,
//     num? total_records,
//     bool? filters_applied,
//     List<PreviewVideos>? data,
//   }) = _CourseVideosPreviewResponseModel;

//   factory CourseVideosPreviewResponseModel.fromJson(
//           Map<String, dynamic> json) =>
//       _$CourseVideosPreviewResponseModelFromJson(json);
// }

// @freezed
// class PreviewVideos with _$PreviewVideos {
//   factory PreviewVideos({
//     String? sId,
//     String? course_id,
//     String? section_id,
//     String? lesson_name,
//     num? lesson_index,
//     String? lesson_type,
//     String? lesson_video_url,
//     bool? lesson_premium,
//     double? lesson_duration_minutes,
//     bool? active,
//     String? createdAt,
//     String? updatedAt,
//     num? iV,
//   }) = _PreviewVideos;

//   factory PreviewVideos.fromJson(Map<String, dynamic> json) =>
//       _$PreviewVideosFromJson(json);
// }

class CourseVideosPreviewResponseModel {
  String? status;
  int? currentlyDisplayedRecordsOnPage;
  int? totalPages;
  int? maxAllowedRecordsPerPage;
  int? totalRecords;
  bool? filtersApplied;
  List<Data>? data;

  CourseVideosPreviewResponseModel(
      {this.status,
      this.currentlyDisplayedRecordsOnPage,
      this.totalPages,
      this.maxAllowedRecordsPerPage,
      this.totalRecords,
      this.filtersApplied,
      this.data});

  CourseVideosPreviewResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    currentlyDisplayedRecordsOnPage =
        json['currently_displayed_records_on_page'];
    totalPages = json['total_pages'];
    maxAllowedRecordsPerPage = json['max_allowed_records_per_page'];
    totalRecords = json['total_records'];
    filtersApplied = json['filters_applied'];
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
    data['filters_applied'] = filtersApplied;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? courseId;
  String? lessonName;
  int? lessonIndex;
  String? lessonType;
  String? lessonVideoUrl;
  bool? lessonPremium;
  double? lessonDurationMinutes;
  bool? active;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? sectionId;

  Data(
      {this.sId,
      this.courseId,
      this.lessonName,
      this.lessonIndex,
      this.lessonType,
      this.lessonVideoUrl,
      this.lessonPremium,
      this.lessonDurationMinutes,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.sectionId});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    courseId = json['course_id'];
    lessonName = json['lesson_name'];
    lessonIndex = json['lesson_index'];
    lessonType = json['lesson_type'];
    lessonVideoUrl = json['lesson_video_url'];
    lessonPremium = json['lesson_premium'];
    lessonDurationMinutes = json['lesson_duration_minutes'];
    active = json['active'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    sectionId = json['section_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['course_id'] = courseId;
    data['lesson_name'] = lessonName;
    data['lesson_index'] = lessonIndex;
    data['lesson_type'] = lessonType;
    data['lesson_video_url'] = lessonVideoUrl;
    data['lesson_premium'] = lessonPremium;
    data['lesson_duration_minutes'] = lessonDurationMinutes;
    data['active'] = active;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['section_id'] = sectionId;
    return data;
  }
}
