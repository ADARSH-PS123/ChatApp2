import 'dart:async';

import 'package:chat_app/application/chatRoomBloc/chat_room_bloc.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:chat_app/presentation/chatRoom/widgets/horizontalScroller.dart';
import 'package:chat_app/presentation/chatRoom/widgets/messageBox.dart';

import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/web/mainPage/mainPage.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ValueNotifier<int> notifierText = ValueNotifier(0);
final ValueNotifier<bool> notifierIsBotton = ValueNotifier(false);

class ChatRoom extends StatelessWidget {
  final String uid;
  final String memberId;
  final String name;
  final String groupId;
  final bool isPrivate;

  ChatRoom(
      {Key? key,
      required this.uid,
      required this.memberId,
      required this.groupId,
      required this.isPrivate,
      required this.name})
      : super(key: key);
  final controllerText = TextEditingController();
  ScrollController _scrollController = ScrollController();
  scrollToBottom() {
    if (_scrollController.hasClients) {
      Future.delayed(const Duration(milliseconds: 300)).then((value) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent + 200,
          duration: const Duration(milliseconds: 200),
          curve: Curves.fastOutSlowIn,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<ChatRoomBloc>(context)
          .add(ChatRoomEvent.readMessage(groupId: groupId));
      BlocProvider.of<ChatRoomBloc>(context)
          .add(ChatRoomEvent.getGroupInfo(groupId: groupId));
      BlocProvider.of<ChatRoomBloc>(context)
          .add(ChatRoomEvent.getUserList(groupId: groupId));
      scrollToBottom();
    });

    return BlocBuilder<ChatRoomBloc, ChatRoomState>(
      builder: (context, state) {
        return LayoutBuilder(builder: (context, constraints) {
          if (constraints.constrainWidth() < 600) {
           
              return Scaffold(
                  floatingActionButton: Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 10.w),
                    child: ValueListenableBuilder(
                        valueListenable: notifierText,
                        builder: (BuildContext cxt, values, _) {
                          return Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: CustomTextField(
                                  onchanged: (val) {
                                    notifierText.value = val.length;
                                  },
                                  hintText: "type messages...",
                                  padding: 12.h,
                                  height: notifierText.value < 1 ? 40 : null,
                                  maxLines: (notifierText.value ~/ 30) + 1,
                                  width: constraints.constrainWidth() < 600
                                      ? 300.w
                                      : 125.w,
                                  isSuffixWidget: true,
                                  icon: Icons.message,
                                  controller: controllerText,
                                  ontap: () {
                                    if (isPrivate == true) {
                                      if (controllerText.text.isNotEmpty) {
                                        BlocProvider.of<ChatRoomBloc>(context)
                                            .add(ChatRoomEvent.createGroup(
                                                groupName: "",
                                                myId: uid,
                                                memberId: memberId,
                                                message: controllerText.text));
                                      }
                                    } else {
                                      BlocProvider.of<ChatRoomBloc>(context)
                                          .add(ChatRoomEvent
                                              .sendPublicGroupMessage(
                                                  groupId: groupId.trim(),
                                                  myId: uid.trim(),
                                                  message:
                                                      controllerText.text));
                                    }
                                    scrollToBottom();
                                    controllerText.clear();
                                    notifierText.value = 0;
                                  },
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: buttons(
                                    height: 40.h,
                                    color: const Color(0xff00AC83),
                                    width: 40.h,
                                    widget: Icon(
                                      Icons.camera_alt_rounded,
                                      color: textColor,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: buttons(
                                    height: 40.h,
                                    color: const Color(0xff00AC83),
                                    width: 40.h,
                                    widget: Icon(
                                      Icons.camera_alt_rounded,
                                      color: textColor,
                                    )),
                              )
                            ],
                          );
                        }),
                  ),
                  body: constraints.constrainWidth() <= 600
                      ? Padding(
                          padding: EdgeInsets.only(
                              left: 35.w,
                              right: 35.w,
                              top: 51.h,
                              bottom:
                                  notifierIsBotton.value == true ? 80.h : 0),
                          child:state.isLoading?Center(child: CircularProgressIndicator(color: textColor,)): Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child:state.isLoading?Center(child: CircularProgressIndicator(color: textColor,)): SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: HorizontalScroller(
                                        lUserModel: state.lUserModel,
                                      ))),
                              Text(
                                state.groupInfo.groupName.toString().isEmpty
                                    ? name
                                    : state.groupInfo.groupName.toString(),
                                style: TextStyle(
                                    color: textColor, fontSize: 15.sp),
                              ),
                              kHeight15,
                              Expanded(
                                  flex: 7,
                                  // ignore: sort_child_properties_last
                                  child: ListView.separated(
                                    controller: _scrollController,
                                    itemCount: state.lMessage.length,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      height: 7.h,
                                    ),
                                    itemBuilder: ((context, index) => state
                                                .lMessage[index].sendBy
                                                .toString()
                                                .trim() !=
                                            uid.trim()
                                        ? MessageBox(
                                            message: state
                                                .lMessage[index].message
                                                .toString(),
                                            isSendBy: false,
                                            isBottom:
                                                state.lMessage.length - 1 ==
                                                        index
                                                    ? true
                                                    : false,
                                          )
                                        : MessageBox(
                                            message: state
                                                .lMessage[index].message
                                                .toString(),
                                            isSendBy: true,
                                            isBottom:
                                                state.lMessage.length - 1 ==
                                                        index
                                                    ? true
                                                    : false,
                                          )),
                                  ))
                            ],
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: HorizontalScroller(
                              lUserModel: state.lUserModel,
                            )),
                            Text(
                              "Text",
                              style:
                                  TextStyle(color: textColor, fontSize: 15.r),
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
                                                        BorderRadius.circular(
                                                            20.r)),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
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
                                                bottom: 14.h,
                                                left: 50.w,
                                                right: 4.w),
                                            child: Text(
                                              "sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsgsadhsahdsg sgshwgdhs sadhsahdsg sgshwgdhs sadhsahdsg",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 12.r),
                                            ),
                                            decoration: BoxDecoration(
                                                color: textFieldInnerColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                          )),
                              ),
                              flex: 6,
                            )
                          ],
                        ));
          } else {
            return WebMainPage(
              uid: uid,
            );
          }
        });
      },
    );
  }
}
