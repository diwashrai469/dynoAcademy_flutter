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
      id: json['_id'] as String?,
      mentor_id: json['mentor_id'] == null
          ? null
          : MentorId.fromJson(json['mentor_id'] as Map<String, dynamic>),
      course_name: json['course_name'] as String?,
      course_duration: json['course_duration'] as int?,
      course_info: json['course_info'] as String?,
      course_description: json['course_description'] as String?,
      students_enrolled: json['students_enrolled'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      raters: json['raters'] as int?,
      cost: json['cost'] as int?,
      lessons: json['lessons'] as int?,
      skillLevel: json['skillLevel'] as String?,
      language: json['language'] as String?,
      active: json['active'] as bool?,
      approved: json['approved'] as bool?,
      course_created: json['course_created'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['iV'] as int?,
      thumbnail: json['thumbnail'] as String?,
      course_slug: json['course_slug'] as String?,
      views: json['views'] as int?,
      certificate_learning: json['certificate_learning'] as String?,
      high_cost: json['high_cost'] as int?,
      discount_price_ends: json['discount_price_ends'] as String?,
    );

Map<String, dynamic> _$$CourseDataImplToJson(_$CourseDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'mentor_id': instance.mentor_id,
      'course_name': instance.course_name,
      'course_duration': instance.course_duration,
      'course_info': instance.course_info,
      'course_description': instance.course_description,
      'students_enrolled': instance.students_enrolled,
      'rating': instance.rating,
      'raters': instance.raters,
      'cost': instance.cost,
      'lessons': instance.lessons,
      'skillLevel': instance.skillLevel,
      'language': instance.language,
      'active': instance.active,
      'approved': instance.approved,
      'course_created': instance.course_created,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
      'thumbnail': instance.thumbnail,
      'course_slug': instance.course_slug,
      'views': instance.views,
      'certificate_learning': instance.certificate_learning,
      'high_cost': instance.high_cost,
      'discount_price_ends': instance.discount_price_ends,
    };

_$MentorIdImpl _$$MentorIdImplFromJson(Map<String, dynamic> json) =>
    _$MentorIdImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MentorIdImplToJson(_$MentorIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
