// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_status_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseStatusResponseModelImpl _$$CourseStatusResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseStatusResponseModelImpl(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseStatusResponseModelImplToJson(
        _$CourseStatusResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sId: json['_id'] as String?,
      userId: json['user_id'] as String?,
      courseId: json['course_id'] as String?,
      courseStatus: json['course_status'] as String?,
      active: json['active'] as bool?,
      lessonCompleted: (json['lesson_completed'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['_v'] as int?,
      lastPlayedLessonId: json['last_plated_lesson_id'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'user_id': instance.userId,
      'course_id': instance.courseId,
      'course_status': instance.courseStatus,
      'active': instance.active,
      'lesson_completed': instance.lessonCompleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_v': instance.iV,
      'last_plated_lesson_id': instance.lastPlayedLessonId,
      'id': instance.id,
    };
