import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_response_model.freezed.dart';
part 'add_to_cart_response_model.g.dart';

@freezed
class AddtoCartResponseModel with _$AddtoCartResponseModel {
  factory AddtoCartResponseModel({
    String? status,
    String? message,
  }) = _AddtoCartResponseModel;

  factory AddtoCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddtoCartResponseModelFromJson(json);
}
