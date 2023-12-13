// GENERATED CODE - DO NOT MODIFY BY HAND


part of 'course_response_model.dart';


// **************************************************************************


// JsonSerializableGenerator


// **************************************************************************


_$CourseResponseModelImpl _$$CourseResponseModelImplFromJson(

        Map<String, dynamic> json) =>

    _$CourseResponseModelImpl(

      pageProps: json['pageProps'] == null

          ? null

          : PageProps.fromJson(json['pageProps'] as Map<String, dynamic>),

      bNSSP: json['bNSSP'] as bool?,

    );


Map<String, dynamic> _$$CourseResponseModelImplToJson(

        _$CourseResponseModelImpl instance) =>

    <String, dynamic>{

      'pageProps': instance.pageProps,

      'bNSSP': instance.bNSSP,

    };


_$PagePropsImpl _$$PagePropsImplFromJson(Map<String, dynamic> json) =>

    _$PagePropsImpl(

      courseData: json['courseData'] == null

          ? null

          : CourseData.fromJson(json['courseData'] as Map<String, dynamic>),

    );


Map<String, dynamic> _$$PagePropsImplToJson(_$PagePropsImpl instance) =>

    <String, dynamic>{

      'courseData': instance.courseData,

    };


_$CourseDataImpl _$$CourseDataImplFromJson(Map<String, dynamic> json) =>

    _$CourseDataImpl(

      status: json['status'] as String?,

      currentlyDisplayedRecordsOnPage:

          json['currently_displayed_records_on_page'] as num?,

      totalPages: json['total_page'] as num?,

      maxAllowedRecordsPerPage: json['max_allowed_records_per_page'] as num?,

      totalRecords: json['total_records'] as num?,

      data: (json['data'] as List<dynamic>?)

          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))

          .toList(),

    );


Map<String, dynamic> _$$CourseDataImplToJson(_$CourseDataImpl instance) =>

    <String, dynamic>{

      'status': instance.status,

      'currently_displayed_records_on_page':

          instance.currentlyDisplayedRecordsOnPage,

      'total_page': instance.totalPages,

      'max_allowed_records_per_page': instance.maxAllowedRecordsPerPage,

      'total_records': instance.totalRecords,

      'data': instance.data,

    };


_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(

      sId: json['_id'] as String?,

      mentorId: json['mentor_id'] == null

          ? null

          : MentorId.fromJson(json['mentor_id'] as Map<String, dynamic>),

      courseName: json['course_name'] as String?,

      courseDuration: json['course_duration'] as num?,

      courseInfo: json['course_info'] as String?,

      courseDescription: json['course_description'] as String?,

      studentsEnrolled: json['students_enrolled'] as num?,

      rating: json['rating'] as num?,

      raters: json['raters'] as num?,

      cost: json['cost'] as num?,

      lessons: json['lessons'] as num?,

      skillLevel: json['skill_level'] as String?,

      language: json['language'] as String?,

      active: json['active'] as bool?,

      approved: json['approved'] as bool?,

      courseCreated: json['course_created'] as String?,

      createdAt: json['createdAt'] as String?,

      updatedAt: json['updatedAt'] as String?,

      iV: json['_v'] as num?,

      thumbnail: json['thumbnail'] as String?,

      courseSlug: json['course_slug'] as String?,

      views: json['views'] as num?,

      certificateLearning: json['certificate_learning'] as String?,

      highCost: json['high_cost'] as num?,

      discountPriceEnds: json['discount_price_ends'] as String?,

      isUnderDevelopment: json['is_under_development'] as bool?,

    );


Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>

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

      'is_under_development': instance.isUnderDevelopment,

    };


_$MentorIdImpl _$$MentorIdImplFromJson(Map<String, dynamic> json) =>

    _$MentorIdImpl(

      sId: json['_id'] as String?,

      name: json['name'] as String?,

    );


Map<String, dynamic> _$$MentorIdImplToJson(_$MentorIdImpl instance) =>

    <String, dynamic>{

      'sId': instance.sId,

      'name': instance.name,

    };

