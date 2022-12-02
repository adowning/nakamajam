import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/account_details_screen/models/account_details_model.dart';

class AccountDetailsController extends GetxController {
  Rx<AccountDetailsModel> accountDetailsModelObj = AccountDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
