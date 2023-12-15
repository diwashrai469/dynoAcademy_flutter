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
          currently_displayed_records_on_page:
              json['currently_displayed_records_on_page'] as num?,
          total_pages: json['total_pages'] as num?,
          max_allowed_records_per_page:
              json['max_allowed_records_per_page'] as num?,
          total_records: json['total_records'] as num?,
          filters_applied: json['filters_applied'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => PreviewVideos.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CourseVideosPreviewResponseModelImplToJson(
        _$CourseVideosPreviewResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'currently_displayed_records_on_page':
          instance.currently_displayed_records_on_page,
      'total_pages': instance.total_pages,
      'max_allowed_records_per_page': instance.max_allowed_records_per_page,
      'total_records': instance.total_records,
      'filters_applied': instance.filters_applied,
      'data': instance.data,
    };

_$PreviewVideosImpl _$$PreviewVideosImplFromJson(Map<String, dynamic> json) =>
    _$PreviewVideosImpl(
      sId: json['_id'] as String?,
      course_id: json['course_id'] as String?,
      section_id: json['section_id'] as String?,
      lesson_name: json['lesson_name'] as String?,
      lesson_index: json['lesson_index'] as num?,
      lesson_type: json['lesson_type'] as String?,
      lesson_video_url: json['lesson_video_url'] as String?,
      lesson_premium: json['lesson_premium'] as bool?,
      lesson_duration_minutes:
          (json['lesson_duration_minutes'] as num?)?.toDouble(),
      active: json['active'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['iV'] as num?,
    );

Map<String, dynamic> _$$PreviewVideosImplToJson(_$PreviewVideosImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'course_id': instance.course_id,
      'section_id': instance.section_id,
      'lesson_name': instance.lesson_name,
      'lesson_index': instance.lesson_index,
      'lesson_type': instance.lesson_type,
      'lesson_video_url': instance.lesson_video_url,
      'lesson_premium': instance.lesson_premium,
      'lesson_duration_minutes': instance.lesson_duration_minutes,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
    };
