import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/widgets/app_bar/appbar_image.dart';
import 'package:adowning_social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:adowning_social_networking/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomAppBar(
                          height: getVerticalSize(56.00),
                          leadingWidth: 15,
                          leading: AppbarImage(
                              height: getSize(15.00),
                              width: getSize(15.00),
                              svgPath: ImageConstant.imgArrowleftDeepPurpleA200,
                              onTap: onTapArrowleft7),
                          actions: [
                            AppbarImage(
                                height: getVerticalSize(16.00),
                                width: getHorizontalSize(22.00),
                                svgPath: ImageConstant.imgClock)
                          ]),
                      Padding(
                          padding: getPadding(left: 16, top: 41, right: 16),
                          child: Text("lbl_notifications".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200
                                  .copyWith(height: 1.00))),
                      Padding(
                          padding: getPadding(top: 36),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(2.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepPurple50));
                              },
                              itemCount: controller.notificationsModelObj.value
                                  .notificationsItemList.length,
                              itemBuilder: (context, index) {
                                NotificationsItemModel model = controller
                                    .notificationsModelObj
                                    .value
                                    .notificationsItemList[index];
                                return NotificationsItemWidget(model);
                              })))
                    ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Streams:
        return getDefaultWidget();
      case BottomBarEnum.Messages:
        return getDefaultWidget();
      case BottomBarEnum.Notifications:
        return getDefaultWidget();
      case BottomBarEnum.Profile:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }

  onTapArrowleft7() {
    Get.back();
  }
}
