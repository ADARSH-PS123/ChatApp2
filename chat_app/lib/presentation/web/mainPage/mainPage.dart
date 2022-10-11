import 'package:chat_app/application/mainScreenBloc/main_screen_bloc.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/mainPage/widgets/ScreenListTile.dart';

import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebMainPage extends StatelessWidget {
  final String uid;
  const WebMainPage({Key? key, required this.uid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        BlocProvider.of<MainScreenBloc>(context)
            .add(MainScreenEvent.getUserInfo(uid: uid));
        return Scaffold(
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextField(
                  hintText: "text here",
                  isSuffixWidget: true,
                  padding: 12.h,
                  width: (size.width - 300) / 2)
            ],
          ),
          body: Row(
            children: [
              SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 350, minWidth: 300),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: size.width * .01,
                        top: size.height * .01,
                        right: size.width * .01),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 22.r,
                            ),
                            const Spacer(),
                            state.userModel.name != null
                                ? Text(
                                    state.userModel.name.toString(),
                                    style: TextStyle(
                                        color: textColor, fontSize: 22.r),
                                  )
                                : SizedBox(
                                    child: const CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                    height: 15.r,
                                    width: 15.r,
                                  )
                          ],
                        ),
                        kHeight15,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextField(
                              hintText: "Search..",
                              isSuffixWidget: true,
                              padding: 12.h,
                              width: 300,
                              icon: Icons.search,
                            ),
                          ],
                        ),
                        ListView(
                          controller: ScrollController(),
                          shrinkWrap: true,
                          children: List.generate(
                              40, (index) => const ScreenListTile()),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          kWidth15,
                          CircleAvatar(
                            radius: 22.r,
                          ),
                          const Spacer(),
                          Text(
                            "Adarsh PS ",
                            style: TextStyle(color: textColor, fontSize: 22.r),
                          ),
                          kWidth15
                        ],
                      ),
                      height: size.height * .08,
                    ),
                    Expanded(
                      child: ListView(
                        controller: ScrollController(),
                        children: List.generate(
                            30,
                            (index) => index % 2 == 0
                                ? Container(
                                    padding: EdgeInsets.only(
                                        left: 14.w,
                                        top: 14.h,
                                        bottom: 14.h,
                                        right: 14.w),
                                    margin: EdgeInsets.only(
                                        bottom: 13.h, right: 50.w, left: 4.w),
                                    child: Text(
                                      "sgshwgdh hs sasywtgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywgshwgdh hs sasywv",
                                      style: TextStyle(
                                          color: textColor, fontSize: 15.r),
                                    ),
                                    decoration: BoxDecoration(
                                        color: darkGreyColor,
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                  )
                                : Container(
                                    padding: EdgeInsets.only(
                                        left: 14.w,
                                        right: 14.w,
                                        top: 14.h,
                                        bottom: 14.h),
                                    margin: EdgeInsets.only(
                                        bottom: 14.h, left: 50.w, right: 4.w),
                                    child: Text(
                                      "sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg",
                                      style: TextStyle(
                                          color: textColor, fontSize: 15.r),
                                    ),
                                    decoration: BoxDecoration(
                                        color: textFieldInnerColor,
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                  )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
