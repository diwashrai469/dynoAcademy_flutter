import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_cart_course_response_model.freezed.dart';
part 'delete_cart_course_response_model.g.dart';

@freezed
class DeleteCartCourseResponseModel with _$DeleteCartCourseResponseModel {
  factory DeleteCartCourseResponseModel({
    String? status,
    String? message,
  }) = _DeleteCartCourseResponseModel;

  factory DeleteCartCourseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteCartCourseResponseModelFromJson(json);
}
