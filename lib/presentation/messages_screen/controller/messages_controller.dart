import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/messages_screen/models/messages_model.dart';
import 'package:adowning_social_networking/widgets/custom_bottom_bar.dart';

class MessagesController extends GetxController {
  Rx<MessagesModel> messagesModelObj = MessagesModel().obs;

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
