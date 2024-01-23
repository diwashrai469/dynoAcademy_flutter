import 'package:dio/dio.dart';
import 'package:dynoacademy/common/constant/esewa_constant.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart' as esewa_config;
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'dart:convert';

import 'package:injectable/injectable.dart';

@injectable
class Esewa {
  final ToastService _toastService;
  Esewa(this._toastService);
  void pay({required String productName, required num productPrice}) {
    try {
      EsewaFlutterSdk.initPayment(
          esewaConfig: esewa_config.EsewaConfig(
              clientId: CLIENT_ID,
              secretId: SECRET_KEY,
              environment: esewa_config.Environment.test),
          esewaPayment: EsewaPayment(
              productId: "1d71jd81",
              productName: productName,
              productPrice: productPrice.toString(),
              callbackUrl: ""),
          onPaymentSuccess: (EsewaPaymentSuccessResult result) {
            verify(result);
            _toastService.s("Your payment is sucessfull.");
          },
          onPaymentFailure: () {
            _toastService.e("Your payment failed. Please try again.");
          },
          onPaymentCancellation: () {
            _toastService.i("Your payment was cancled.");
          });
    } catch (e) {
      _toastService.e("Your payment failed. $e");
    }
  }

  verify(EsewaPaymentSuccessResult result) async {
    try {
      Dio dio = Dio();
      String basic =
          'Basic ${base64.encode(utf8.encode('JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R:BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ=='))}';
      Response response = await dio.get(
        'https://esewa.com.np/mobile/transaction',
        queryParameters: {
          'txnRefId': result.refId,
        },
        options: Options(
          headers: {
            'Authorization': basic,
          },
        ),
      );
      print(response.data);
    } catch (e) {
      print(e);
    }
  }
}
