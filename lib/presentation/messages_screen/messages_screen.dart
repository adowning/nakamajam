import '../messages_screen/widgets/listellipsefifteen3_item_widget.dart';
import '../messages_screen/widgets/listellipsetwentytwo_one_item_widget.dart';
import 'controller/messages_controller.dart';
import 'models/listellipsefifteen3_item_model.dart';
import 'models/listellipsetwentytwo_one_item_model.dart';
import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/widgets/app_bar/appbar_image.dart';
import 'package:adowning_social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:adowning_social_networking/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends GetWidget<MessagesController> {
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
                              onTap: onTapArrowleft5),
                          actions: [
                            AppbarImage(
                                height: getSize(14.00),
                                width: getSize(14.00),
                                svgPath: ImageConstant.imgPlus)
                          ]),
                      Padding(
                          padding: getPadding(left: 16, top: 46, right: 16),
                          child: Text("lbl_messages".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(102.00),
                              width: getHorizontalSize(413.00),
                              child: Obx(() => ListView.builder(
                                  padding: getPadding(left: 10, top: 21),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.messagesModelObj.value
                                      .listellipsefifteen3ItemList.length,
                                  itemBuilder: (context, index) {
                                    Listellipsefifteen3ItemModel model =
                                        controller.messagesModelObj.value
                                            .listellipsefifteen3ItemList[index];
                                    return Listellipsefifteen3ItemWidget(model);
                                  })))),
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          margin: getMargin(top: 24),
                          decoration:
                              BoxDecoration(color: ColorConstant.deepPurple50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 24, right: 10),
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
                                  itemCount: controller.messagesModelObj.value
                                      .listellipsetwentytwoOneItemList.length,
                                  itemBuilder: (context, index) {
                                    ListellipsetwentytwoOneItemModel model =
                                        controller.messagesModelObj.value
                                                .listellipsetwentytwoOneItemList[
                                            index];
                                    return ListellipsetwentytwoOneItemWidget(
                                        model);
                                  }))))
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

  onTapArrowleft5() {
    Get.back();
  }
}
