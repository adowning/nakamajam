import 'controller/filters_controller.dart';
import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/widgets/app_bar/appbar_image.dart';
import 'package:adowning_social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends GetWidget<FiltersController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                852.00,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        852.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                              imagePath: ImageConstant.imgRectangle38091,
                              height: getVerticalSize(
                                852.00,
                              ),
                              width: getHorizontalSize(
                                414.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
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
                                      margin: getMargin(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                    ),
                                    actions: [
                                      AppbarImage(
                                        height: getVerticalSize(
                                          20.00,
                                        ),
                                        width: getHorizontalSize(
                                          19.00,
                                        ),
                                        svgPath: ImageConstant.imgSettings,
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                        top: 151,
                                      ),
                                      decoration: AppDecoration
                                          .gradientBlack9009eBlack9009e3
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              margin: getMargin(
                                                top: 285,
                                              ),
                                              decoration: AppDecoration
                                                  .gradientBlack90000Black901,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 25,
                                                      top: 184,
                                                      bottom: 147,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          25.00,
                                                        ),
                                                      ),
                                                      child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse650X50,
                                                        height: getSize(
                                                          50.00,
                                                        ),
                                                        width: getSize(
                                                          50.00,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 196,
                                                      bottom: 160,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgAirplane,
                                                      height: getVerticalSize(
                                                        25.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        14.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: getVerticalSize(
                                                      102.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      106.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 158,
                                                      bottom: 121,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              102.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              106.00,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteA70072,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                getHorizontalSize(
                                                                  53.00,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              65.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              66.00,
                                                            ),
                                                            margin: getMargin(
                                                              left: 19,
                                                              top: 18,
                                                              right: 19,
                                                              bottom: 18,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                getHorizontalSize(
                                                                  33.13,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 199,
                                                      bottom: 163,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup8971,
                                                      height: getVerticalSize(
                                                        19.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        28.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 191,
                                                      right: 25,
                                                      bottom: 160,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgBrightness,
                                                      height: getSize(
                                                        30.00,
                                                      ),
                                                      width: getSize(
                                                        30.00,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(
                        left: 10,
                        top: 58,
                        bottom: 58,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "lbl_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24Gray600,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 24,
                              bottom: 3,
                            ),
                            child: Text(
                              "lbl_live".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24Gray600,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 24,
                              top: 1,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_normal".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 24,
                              top: 1,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_zoom".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24Gray600,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 24,
                              top: 1,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_food".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24Gray600,
                            ),
                          ),
                        ],
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
