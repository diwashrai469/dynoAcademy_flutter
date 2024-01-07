// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationResponseModelImpl _$$NotificationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationResponseModelImpl(
      status: json['status'] as String?,
      currentlyDisplayedRecordsOnPage:
          json['currently_displayed_records_on_page'] as int?,
      totalPages: json['total_pages'] as int?,
      maxAllowedRecordsPerPage: json['max_allowed_records_per_page'] as int?,
      totalRecords: json['total_records'] as int?,
      filtersApplied: json['filters_applied'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotificationResponseModelImplToJson(
        _$NotificationResponseModelImpl instance) =>
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

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sId: json['_id'] as String?,
      userId: json['user_id'] as String?,
      notificationText: json['notification_text'] as String?,
      link: json['link'] as String?,
      seen: json['seen'] as bool?,
      active: json['active'] as bool?,
      buttonText: json['button_text'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: json['_v'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'user_id': instance.userId,
      'notification_text': instance.notificationText,
      'link': instance.link,
      'seen': instance.seen,
      'active': instance.active,
      'button_text': instance.buttonText,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_v': instance.iV,
    };
