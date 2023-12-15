import 'package:freezed_annotation/freezed_annotation.dart';
part 'course_videos_preview_response_model.freezed.dart';
part 'course_videos_preview_response_model.g.dart';

@freezed
class CourseVideosPreviewResponseModel with _$CourseVideosPreviewResponseModel {
  factory CourseVideosPreviewResponseModel({
    String? status,
    num? currently_displayed_records_on_page,
    num? total_pages,
    num? max_allowed_records_per_page,
    num? total_records,
    bool? filters_applied,
    List<PreviewVideos>? data,
  }) = _CourseVideosPreviewResponseModel;

  factory CourseVideosPreviewResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$CourseVideosPreviewResponseModelFromJson(json);
}

@freezed
class PreviewVideos with _$PreviewVideos {
  factory PreviewVideos({
    String? sId,
    String? course_id,
    String? section_id,
    String? lesson_name,
    num? lesson_index,
    String? lesson_type,
    String? lesson_video_url,
    bool? lesson_premium,
    double? lesson_duration_minutes,
    bool? active,
    String? createdAt,
    String? updatedAt,
    num? iV,
  }) = _PreviewVideos;

  factory PreviewVideos.fromJson(Map<String, dynamic> json) =>
      _$PreviewVideosFromJson(json);
}
