// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseCartResponseModelImpl _$$CourseCartResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseCartResponseModelImpl(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseCartResponseModelImplToJson(
        _$CourseCartResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sId: json['_id'] as String?,
      userId: json['user_id'] as String?,
      courseId: json['course_id'] == null
          ? null
          : CourseId.fromJson(json['course_id'] as Map<String, dynamic>),
      courseStatus: json['course_status'] as String?,
      active: json['active'] as bool?,
      lessonCompleted: (json['lesson_completed'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['iV'] as int?,
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
      'iV': instance.iV,
      'id': instance.id,
    };

_$CourseIdImpl _$$CourseIdImplFromJson(Map<String, dynamic> json) =>
    _$CourseIdImpl(
      s3Folder: json['s3_folder'] as String?,
      sId: json['_id'] as String?,
      mentorId: json['mentro_id'] as String?,
      courseName: json['course_name'] as String?,
      courseDuration: json['course_duration'] as int?,
      courseInfo: json['course_info'] as String?,
      courseDescription: json['course_description'] as String?,
      studentsEnrolled: json['students_enrolled'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      raters: json['raters'] as int?,
      cost: json['cost'] as int?,
      lessons: json['lessons'] as int?,
      skillLevel: json['skill_level'] as String?,
      language: json['language'] as String?,
      active: json['active'] as bool?,
      approved: json['approved'] as bool?,
      courseCreated: json['course_created'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['iV'] as int?,
      thumbnail: json['thumbnail'] as String?,
      courseSlug: json['course_slug'] as String?,
      views: json['views'] as int?,
      certificateLearning: json['certificate_learning'] as String?,
      highCost: json['high_cost'] as int?,
      discountPriceEnds: json['discounted_price_ends'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$CourseIdImplToJson(_$CourseIdImpl instance) =>
    <String, dynamic>{
      's3_folder': instance.s3Folder,
      '_id': instance.sId,
      'mentro_id': instance.mentorId,
      'course_name': instance.courseName,
      'course_duration': instance.courseDuration,
      'course_info': instance.courseInfo,
      'course_description': instance.courseDescription,
      'students_enrolled': instance.studentsEnrolled,
      'rating': instance.rating,
      'raters': instance.raters,
      'cost': instance.cost,
      'lessons': instance.lessons,
      'skill_level': instance.skillLevel,
      'language': instance.language,
      'active': instance.active,
      'approved': instance.approved,
      'course_created': instance.courseCreated,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
      'thumbnail': instance.thumbnail,
      'course_slug': instance.courseSlug,
      'views': instance.views,
      'certificate_learning': instance.certificateLearning,
      'high_cost': instance.highCost,
      'discounted_price_ends': instance.discountPriceEnds,
      'id': instance.id,
    };
