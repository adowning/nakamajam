import 'controller/sign_up_controller.dart';
import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/widgets/custom_button.dart';
import 'package:adowning_social_networking/widgets/custom_icon_button.dart';
import 'package:adowning_social_networking/widgets/custom_radio_button.dart';
import 'package:adowning_social_networking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          margin: getMargin(left: 16, top: 3, right: 16),
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 16, top: 33, right: 16, bottom: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(103.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(103.00))),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 3, right: 10),
                                                  child: Text(
                                                      "msg_create_a_new_ac".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold32)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 15, right: 10),
                                                  child: Text(
                                                      "msg_it_s_fast_and_e".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16)),
                                              Container(
                                                  width: double.infinity,
                                                  margin: getMargin(top: 26),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  103.00))),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width:
                                                                double.infinity,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            103.00))),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              25.00))),
                                                                      child: Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .spaceBetween,
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .center,
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            CustomTextFormField(
                                                                                width: 183,
                                                                                focusNode: FocusNode(),
                                                                                controller: controller.frameThirtyController,
                                                                                hintText: "lbl_first_name".tr),
                                                                            CustomTextFormField(
                                                                                width: 183,
                                                                                focusNode: FocusNode(),
                                                                                controller: controller.frameThirtyFourController,
                                                                                hintText: "lbl_last_name".tr)
                                                                          ])),
                                                                  CustomTextFormField(
                                                                      width:
                                                                          382,
                                                                      focusNode:
                                                                          FocusNode(),
                                                                      controller:
                                                                          controller
                                                                              .frameThirtyFiveController,
                                                                      hintText:
                                                                          "lbl_email_id"
                                                                              .tr,
                                                                      margin: getMargin(
                                                                          top:
                                                                              16)),
                                                                  CustomTextFormField(
                                                                      width:
                                                                          382,
                                                                      focusNode:
                                                                          FocusNode(),
                                                                      controller:
                                                                          controller
                                                                              .frameThirtySixController,
                                                                      hintText:
                                                                          "lbl_phone_no"
                                                                              .tr,
                                                                      margin: getMargin(
                                                                          top:
                                                                              16)),
                                                                  CustomTextFormField(
                                                                      width:
                                                                          382,
                                                                      focusNode:
                                                                          FocusNode(),
                                                                      controller:
                                                                          controller
                                                                              .frameThirtySevenController,
                                                                      hintText:
                                                                          "lbl_date_of_birth"
                                                                              .tr,
                                                                      margin: getMargin(
                                                                          top:
                                                                              16),
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .done,
                                                                      suffix: Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  30,
                                                                              top:
                                                                                  14,
                                                                              right:
                                                                                  18,
                                                                              bottom:
                                                                                  14),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant
                                                                                  .imgCalendar)),
                                                                      suffixConstraints: BoxConstraints(
                                                                          minWidth: getHorizontalSize(
                                                                              20.00),
                                                                          minHeight:
                                                                              getVerticalSize(22.00)))
                                                                ])),
                                                        Container(
                                                            width:
                                                                double.infinity,
                                                            margin: getMargin(
                                                                top: 25),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            39.91))),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          right:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_gender"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterMedium16)),
                                                                  Obx(() => Row(
                                                                          children: [
                                                                            CustomRadioButton(
                                                                                text: "lbl_female".tr,
                                                                                iconSize: 20,
                                                                                value: controller.signUpModelObj.value.radioList[0],
                                                                                groupValue: controller.radioGroup.value,
                                                                                onChange: (value) {
                                                                                  controller.radioGroup.value = value;
                                                                                }),
                                                                            CustomRadioButton(
                                                                                text: "lbl_male".tr,
                                                                                iconSize: 20,
                                                                                value: controller.signUpModelObj.value.radioList[1],
                                                                                groupValue: controller.radioGroup.value,
                                                                                margin: getMargin(left: 16),
                                                                                onChange: (value) {
                                                                                  controller.radioGroup.value = value;
                                                                                })
                                                                          ]))
                                                                ]))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          365.00),
                                                      margin: getMargin(
                                                          left: 9,
                                                          top: 43,
                                                          right: 6),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "msg_by_clicking_reg2"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_data_policy"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_and"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_cookie_polic"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                TextSpan(
                                                                    text:
                                                                        "msg_y_you_will_rec"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight.w400))
                                                              ]),
                                                          textAlign: TextAlign
                                                              .center)))
                                            ])),
                                    CustomButton(
                                        width: 382,
                                        text: "lbl_sign_up".tr,
                                        margin: getMargin(top: 40),
                                        variant: ButtonVariant.FillWhiteA700,
                                        shape: ButtonShape.CircleBorder25,
                                        padding: ButtonPadding.PaddingAll16,
                                        fontStyle:
                                            ButtonFontStyle.InterMedium18)
                                  ])))
                    ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
