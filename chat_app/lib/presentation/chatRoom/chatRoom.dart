import 'package:chat_app/presentation/chatRoom/widgets/horizontalScroller.dart';
import 'package:chat_app/presentation/chatRoom/widgets/optionsListTile.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/web/mainPage/mainPage.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRoom extends StatelessWidget {
  final String uid;
  const ChatRoom({Key? key,required this.uid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.constrainWidth() < 600) {
        return Scaffold(
            floatingActionButton: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 10.w),
              child: Row(
                mainAxisAlignment: constraints.constrainWidth() < 600
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    hintText: "type messages...",
                    padding: 12.h,
                    width: constraints.constrainWidth() < 600 ? 250.w : 125.w,
                    isSuffixWidget: true,
                    icon: Icons.message,
                  ),
                  buttons(
                      height: 40.h,
                      color: Color(0xff00AC83),
                      width: 40.h,
                      widget: Icon(
                        Icons.camera_alt_rounded,
                        color: textColor,
                      ))
                ],
              ),
            ),
            body: constraints.constrainWidth() <= 600
                ? Padding(
                    padding:
                        EdgeInsets.only(left: 35.w, right: 35.w, top: 51.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: HorizontalScroller())),
                        Text(
                          "Text",
                          style: TextStyle(color: textColor, fontSize: 15.sp),
                        ),
                        kHeight15,
                        Expanded(
                          // ignore: sort_child_properties_last
                          child: ListView(
                            children: List.generate(
                                30,
                                (index) => index % 2 == 0
                                    ? Stack(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 14.w,
                                                top: 14.h,
                                                bottom: 14.h,
                                                right: 14),
                                            margin: EdgeInsets.only(
                                                bottom: 13.h, right: 50.w),
                                            child: Text(
                                              "sgshwgdh hs sasywtgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywv",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 13.r),
                                            ),
                                            decoration: BoxDecoration(
                                                color: darkGreyColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: CircleAvatar(
                                              radius: 12.r,
                                            ),
                                          )
                                        ],
                                      )
                                    : Container(
                                        padding: EdgeInsets.only(
                                            left: 14.w,
                                            right: 24.w,
                                            top: 14.h,
                                            bottom: 14.h),
                                        margin: EdgeInsets.only(
                                            bottom: 14.h, left: 10.w),
                                        child: Text(
                                          "sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg",
                                          style: TextStyle(
                                              color: textColor, fontSize: 12.r),
                                        ),
                                        decoration: BoxDecoration(
                                            color: textFieldInnerColor,
                                            borderRadius:
                                                BorderRadius.circular(20.sp)),
                                      )),
                          ),
                          flex: 6,
                        )
                      ],
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Expanded(child: HorizontalScroller()),
                      Text(
                        "Text",
                        style: TextStyle(color: textColor, fontSize: 15.r),
                      ),
                      kHeight15,
                      Expanded(
                        // ignore: sort_child_properties_last
                        child: ListView(
                          children: List.generate(
                              30,
                              (index) => index % 2 == 0
                                  ? Stack(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 14.w,
                                              top: 14.h,
                                              bottom: 14.h,
                                              right: 14),
                                          margin: EdgeInsets.only(
                                              bottom: 13.h,
                                              right: 50.w,
                                              left: 4.w),
                                          child: Text(
                                            "sgshwgdh hs sasywtgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywv",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 12.r),
                                          ),
                                          decoration: BoxDecoration(
                                              color: darkGreyColor,
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: CircleAvatar(
                                            radius: 12.r,
                                          ),
                                        )
                                      ],
                                    )
                                  : Container(
                                      padding: EdgeInsets.only(
                                          left: 14.w,
                                          right: 24.w,
                                          top: 14.h,
                                          bottom: 14.h),
                                      margin: EdgeInsets.only(
                                          bottom: 14.h, left: 50.w, right: 4.w),
                                      child: Text(
                                        "sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg",
                                        style: TextStyle(
                                            color: textColor, fontSize: 12.r),
                                      ),
                                      decoration: BoxDecoration(
                                          color: textFieldInnerColor,
                                          borderRadius:
                                              BorderRadius.circular(20.r)),
                                    )),
                        ),
                        flex: 6,
                      )
                    ],
                  ));
      } else {
        return WebMainPage(uid: uid,);
      }
    });
  }
}
