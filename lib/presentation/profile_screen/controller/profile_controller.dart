import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/profile_screen/models/profile_model.dart';
import 'package:adowning_social_networking/widgets/custom_bottom_bar.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
