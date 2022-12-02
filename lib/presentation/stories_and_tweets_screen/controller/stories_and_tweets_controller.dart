import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/stories_and_tweets_screen/models/stories_and_tweets_model.dart';
import 'package:adowning_social_networking/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class StoriesAndTweetsController extends GetxController {
  TextEditingController group9020Controller = TextEditingController();

  Rx<StoriesAndTweetsModel> storiesAndTweetsModelObj =
      StoriesAndTweetsModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9020Controller.dispose();
  }
}
