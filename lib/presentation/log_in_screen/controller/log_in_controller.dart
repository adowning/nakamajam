import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:adowning_social_networking/data/models/token/post_token_resp.dart';
import 'package:adowning_social_networking/data/apiClient/api_client.dart';
import 'package:adowning_social_networking/data/models/token/post_token_req.dart';

class LogInController extends GetxController {
  TextEditingController frameThirtyController = TextEditingController();

  TextEditingController frameThirtyOneController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  Rx<bool> isShowPassword = false.obs;

  PostTokenResp postTokenResp = PostTokenResp();

  @override
  void onReady() {
    super.onReady();
    PostTokenReq postTokenReq = PostTokenReq(
      email: this.frameThirtyController.text,
      password: this.frameThirtyOneController.text,
    );
    Map<String, dynamic> queryParams = {};
    this.callCreateToken(
      postTokenReq.toJson(),
      successCall: _onCreateTokenSuccess,
      errCall: _onCreateTokenError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtyController.dispose();
    frameThirtyOneController.dispose();
  }

  void callCreateToken(Map req,
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().createToken(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateTokenSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateTokenError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req,
        queryParams: queryParams);
  }

  void onCreateTokenSuccess(var response) {
    postTokenResp = PostTokenResp.fromJson(response);
  }

  void onCreateTokenError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onCreateTokenSuccess() {}
  void _onCreateTokenError() {}
}
