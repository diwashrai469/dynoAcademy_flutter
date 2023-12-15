// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseDetailsResponseModelImpl _$$CourseDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseDetailsResponseModelImpl(
      pageProps: json['pageProps'] == null
          ? null
          : PageProps.fromJson(json['pageProps'] as Map<String, dynamic>),
      bNSSP: json['bNSSP'] as bool?,
    );

Map<String, dynamic> _$$CourseDetailsResponseModelImplToJson(
        _$CourseDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'pageProps': instance.pageProps,
      'bNSSP': instance.bNSSP,
    };

_$PagePropsImpl _$$PagePropsImplFromJson(Map<String, dynamic> json) =>
    _$PagePropsImpl(
      courseData: json['courseData'] == null
          ? null
          : CourseData.fromJson(json['courseData'] as Map<String, dynamic>),
      successData: json['successData'] as String?,
    );

Map<String, dynamic> _$$PagePropsImplToJson(_$PagePropsImpl instance) =>
    <String, dynamic>{
      'courseData': instance.courseData,
      'successData': instance.successData,
    };

_$CourseDataImpl _$$CourseDataImplFromJson(Map<String, dynamic> json) =>
    _$CourseDataImpl(
      sId: json['_id'] as String?,
      mentorId: json['mentor_id'] == null
          ? null
          : MentorId.fromJson(json['mentor_id'] as Map<String, dynamic>),
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
      iV: json['_v'] as int?,
      thumbnail: json['thumbnail'] as String?,
      courseSlug: json['course_slug'] as String?,
      views: json['views'] as int?,
      certificateLearning: json['certificate_learning'] as String?,
      highCost: json['high_cost'] as int?,
      discountPriceEnds: json['discount_price_ends'] as String?,
    );

Map<String, dynamic> _$$CourseDataImplToJson(_$CourseDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'mentor_id': instance.mentorId,
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
      '_v': instance.iV,
      'thumbnail': instance.thumbnail,
      'course_slug': instance.courseSlug,
      'views': instance.views,
      'certificate_learning': instance.certificateLearning,
      'high_cost': instance.highCost,
      'discount_price_ends': instance.discountPriceEnds,
    };

_$MentorIdImpl _$$MentorIdImplFromJson(Map<String, dynamic> json) =>
    _$MentorIdImpl(
      sId: json['_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MentorIdImplToJson(_$MentorIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'name': instance.name,
    };
