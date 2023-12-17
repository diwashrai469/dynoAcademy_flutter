class LoginResponseModel {
  String? status;
  List<Errors>? errors;
  String? message;
  String? accessToken;

  LoginResponseModel(
      {this.status, this.errors, this.message, this.accessToken});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors!.add(Errors.fromJson(v));
      });
    }
    message = json['message'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (errors != null) {
      data['errors'] = errors!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['accessToken'] = accessToken;
    return data;
  }
}

class Errors {
  String? message;

  Errors({this.message});

  Errors.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    return data;
  }
}
