// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_response_model.freezed.dart';
part 'config_response_model.g.dart';

@freezed
class ConfigResponseModel with _$ConfigResponseModel {
  factory ConfigResponseModel({
    String? status,
    GetUser? getUser,
    int? cartItems,
    int? notifications,
  }) = _ConfigResponseModel;

  factory ConfigResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigResponseModelFromJson(json);
}

@freezed
class GetUser with _$GetUser {
  factory GetUser({
    @JsonKey(name: "_id") String? sId,
    String? email,
    String? name,
    @JsonKey(name: "mobile_number") String? mobileNumber,
    bool? verified,
    bool? suspended,
    @JsonKey(name: "last_login") String? lastLogin,
    String? createdAt,
    String? id,
  }) = _GetUser;

  factory GetUser.fromJson(Map<String, dynamic> json) =>
      _$GetUserFromJson(json);
}
