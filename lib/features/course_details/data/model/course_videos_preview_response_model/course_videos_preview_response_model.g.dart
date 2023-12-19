// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_videos_preview_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseVideosPreviewResponseModelImpl
    _$$CourseVideosPreviewResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CourseVideosPreviewResponseModelImpl(
          status: json['status'] as String?,
          currentlyDisplayedRecordsOnPage:
              json['currently_displayed_records_on_page'] as num?,
          totalPages: json['total_pages'] as num?,
          maxAllowedRecordsPerPage:
              json['max_allowed_records_per_page'] as num?,
          totalRecords: json['total_records'] as num?,
          filtersApplied: json['filters_applied'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => PreviewVideos.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CourseVideosPreviewResponseModelImplToJson(
        _$CourseVideosPreviewResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'currently_displayed_records_on_page':
          instance.currentlyDisplayedRecordsOnPage,
      'total_pages': instance.totalPages,
      'max_allowed_records_per_page': instance.maxAllowedRecordsPerPage,
      'total_records': instance.totalRecords,
      'filters_applied': instance.filtersApplied,
      'data': instance.data,
    };

_$PreviewVideosImpl _$$PreviewVideosImplFromJson(Map<String, dynamic> json) =>
    _$PreviewVideosImpl(
      sId: json['_id'] as String?,
      courseId: json['course_id'] as String?,
      sectionId: json['section_id'] as String?,
      lessonName: json['lesson_name'] as String?,
      lessonIndex: json['lesson_index'] as num?,
      lessonType: json['lesson_type'] as String?,
      lessonVideoUrl: json['lesson_video_url'] as String?,
      lessonPremium: json['lesson_premium'] as bool?,
      lessonDurationMinutes:
          (json['lesson_duration_minutes'] as num?)?.toDouble(),
      active: json['active'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['iV'] as num?,
    );

Map<String, dynamic> _$$PreviewVideosImplToJson(_$PreviewVideosImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'course_id': instance.courseId,
      'section_id': instance.sectionId,
      'lesson_name': instance.lessonName,
      'lesson_index': instance.lessonIndex,
      'lesson_type': instance.lessonType,
      'lesson_video_url': instance.lessonVideoUrl,
      'lesson_premium': instance.lessonPremium,
      'lesson_duration_minutes': instance.lessonDurationMinutes,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
    };
