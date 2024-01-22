// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_lessons_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseLessonsResponseModelImpl _$$CourseLessonsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseLessonsResponseModelImpl(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseLessonsResponseModelImplToJson(
        _$CourseLessonsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sId: json['_id'] as String?,
      courseId: json['course_id'] as String?,
      sectionName: json['section_name'] as String?,
      sectionIndex: json['section_index'] as int?,
      lessons: (json['lessons'] as List<dynamic>?)
          ?.map((e) => Lessons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'course_id': instance.courseId,
      'section_name': instance.sectionName,
      'section_index': instance.sectionIndex,
      'lessons': instance.lessons,
    };

_$LessonsImpl _$$LessonsImplFromJson(Map<String, dynamic> json) =>
    _$LessonsImpl(
      sId: json['_id'] as String?,
      courseId: json['course_id'] as String?,
      lessonName: json['lesson_name'] as String?,
      lessonIndex: (json['lesson_index'] as num?)?.toDouble(),
      lessonType: json['lesson_type'] as String?,
      lessonVideoUrl: json['lesson_video_url'] as String?,
      lessonPremium: json['lesson_premium'] as bool?,
      lessonDurationMinutes:
          (json['lesson_duration_minutes'] as num?)?.toDouble(),
      active: json['active'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['_v'] as int?,
      sectionId: json['section_id'] as String?,
      lessonHtml: json['lesson_html'] as String?,
    );

Map<String, dynamic> _$$LessonsImplToJson(_$LessonsImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'course_id': instance.courseId,
      'lesson_name': instance.lessonName,
      'lesson_index': instance.lessonIndex,
      'lesson_type': instance.lessonType,
      'lesson_video_url': instance.lessonVideoUrl,
      'lesson_premium': instance.lessonPremium,
      'lesson_duration_minutes': instance.lessonDurationMinutes,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_v': instance.iV,
      'section_id': instance.sectionId,
      'lesson_html': instance.lessonHtml,
    };
