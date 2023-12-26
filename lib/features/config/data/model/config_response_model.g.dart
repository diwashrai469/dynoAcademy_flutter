// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigResponseModelImpl _$$ConfigResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfigResponseModelImpl(
      status: json['status'] as String?,
      getUser: json['getUser'] == null
          ? null
          : GetUser.fromJson(json['getUser'] as Map<String, dynamic>),
      cartItems: json['cartItems'] as int?,
      notifications: json['notifications'] as int?,
    );

Map<String, dynamic> _$$ConfigResponseModelImplToJson(
        _$ConfigResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'getUser': instance.getUser,
      'cartItems': instance.cartItems,
      'notifications': instance.notifications,
    };

_$GetUserImpl _$$GetUserImplFromJson(Map<String, dynamic> json) =>
    _$GetUserImpl(
      sId: json['_id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      mobileNumber: json['mobile_number'] as String?,
      verified: json['verified'] as bool?,
      suspended: json['suspended'] as bool?,
      lastLogin: json['last_login'] as String?,
      createdAt: json['createdAt'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$GetUserImplToJson(_$GetUserImpl instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'email': instance.email,
      'name': instance.name,
      'mobile_number': instance.mobileNumber,
      'verified': instance.verified,
      'suspended': instance.suspended,
      'last_login': instance.lastLogin,
      'createdAt': instance.createdAt,
      'id': instance.id,
    };
