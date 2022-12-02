import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/accout_view_screen/models/accout_view_model.dart';
import 'package:adowning_social_networking/widgets/custom_bottom_bar.dart';

class AccoutViewController extends GetxController {
  Rx<AccoutViewModel> accoutViewModelObj = AccoutViewModel().obs;

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
