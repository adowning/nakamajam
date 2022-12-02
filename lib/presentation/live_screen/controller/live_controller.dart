import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/live_screen/models/live_model.dart';
import 'package:flutter/material.dart';

class LiveController extends GetxController {
  TextEditingController frameThirtySixController = TextEditingController();

  Rx<LiveModel> liveModelObj = LiveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtySixController.dispose();
  }
}
