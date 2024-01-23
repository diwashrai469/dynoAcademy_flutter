import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

@injectable
class KhaltiPayment {
  final ToastService _toastService;
  KhaltiPayment(
    this._toastService,
  );
  payWithKhaltiInApp(
      {required BuildContext context,
      required String productName,
      required num productPrice}) async {
    void onSuccess(PaymentSuccessModel value) {
      //refrence id after sucessul transaction
      if (kDebugMode) {
        print(value.idx);
      }
      _toastService.s("Your payment is sucessfull.");
    }

    void onFailure(PaymentFailureModel value) {
      _toastService.e("Your payment failed. Please try again.");
    }

    void onCancel() {
      _toastService.i("Your payment was cancled.");
    }

    KhaltiScope.of(context).pay(
      config: PaymentConfig(
        amount: 1000,
        productIdentity: "Porduct id",
        productName: productName,
      ),
      preferences: [
        PaymentPreference.khalti,
      ],
      onSuccess: onSuccess,
      onFailure: onFailure,
      onCancel: onCancel,
    );
  }
}
