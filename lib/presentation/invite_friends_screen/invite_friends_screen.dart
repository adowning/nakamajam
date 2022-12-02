import '../invite_friends_screen/widgets/invite_friends_item_widget.dart';
import 'controller/invite_friends_controller.dart';
import 'models/invite_friends_item_model.dart';
import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/widgets/app_bar/appbar_image.dart';
import 'package:adowning_social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InviteFriendsScreen extends GetWidget<InviteFriendsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 18,
          leading: AppbarImage(
            height: getSize(
              18.00,
            ),
            width: getSize(
              18.00,
            ),
            svgPath: ImageConstant.imgClose,
          ),
          actions: [
            Text(
              "lbl_next".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold18,
            ),
          ],
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                top: 40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Text(
                      "lbl_invite_friends".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold32DeeppurpleA200.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 31,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Container(
                            height: getVerticalSize(
                              2.00,
                            ),
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorConstant.deepPurple50,
                            ),
                          );
                        },
                        itemCount: controller.inviteFriendsModelObj.value
                            .inviteFriendsItemList.length,
                        itemBuilder: (context, index) {
                          InviteFriendsItemModel model = controller
                              .inviteFriendsModelObj
                              .value
                              .inviteFriendsItemList[index];
                          return InviteFriendsItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
