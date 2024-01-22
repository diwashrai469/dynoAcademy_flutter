import 'package:dynoacademy/common/constant/esewa_constant.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'dart:convert';

import 'package:dio/dio.dart';

class Esewa {
  pay() {
    try {
      EsewaFlutterSdk.initPayment(
          esewaConfig: EsewaConfig(
              clientId: CLIENT_ID,
              secretId: SECRET_KEY,
              environment: Environment.test),
          esewaPayment: EsewaPayment(
              productId: "1d71jd81",
              productName: "Product One",
              productPrice: "1000",
              callbackUrl: ""),
          onPaymentSuccess: (EsewaPaymentSuccessResult result) {
            verify(result);
            print("sucess");
          },
          onPaymentFailure: () {
            print("falied");
          },
          onPaymentCancellation: () {
            print("cancled");
          });
    } catch (e) {
      print("some error $e");
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
