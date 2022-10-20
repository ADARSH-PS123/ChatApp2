import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:chat_app/presentation/chatRoom/chatRoom.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/mainPage/widgets/ScreenListTile.dart';
import 'package:chat_app/presentation/mainPage/widgets/carouselChild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IdlePage extends StatelessWidget {
  final List<UserModel> lUserModel;
  final List<GroupModel> groupModelList;
  final List<GroupModel> lGroupModel;
  final String myId;

  const IdlePage(
      {Key? key,
      required this.lUserModel,
      required this.groupModelList,
      required this.myId,
      required this.lGroupModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .7,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 160.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: groupModelList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext contex) => ChatRoom(
                              uid: '',
                              memberId: '',
                              groupId: groupModelList[index].groupId!.trim(),
                              isPrivate: false,
                              name: '')));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10.w),
                      height: 110.h,
                      width: 95.w,
                      decoration: BoxDecoration(
                          color: textColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Stack(
                        children: [
                          Positioned(
                              top: -8.h,
                              left: -8.w,
                              child: CircleAvatar(
                                radius: 30.r,
                                backgroundImage: AssetImage('assets/users.jpg'),
                              )),
                          Center(
                            child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: textColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  groupModelList[index].groupName ?? '',
                                  style: TextStyle(
                                      color: darkGreyColor, fontSize: 13.sp),
                                )),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: textColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  groupModelList[index].recentMsg ?? '',
                                  style: TextStyle(
                                    color: darkGreyColor,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          kHeight15,
          Expanded(
            child: ListView.separated(
                itemBuilder: (BuildContext cxt, int index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatRoom(
                                  isPrivate: true,
                                  uid: myId,
                                  memberId: lUserModel[index].userId,
                                  groupId: lGroupModel[index]
                                      .groupId
                                      .toString()
                                      .trim(),
                                  name: lUserModel[index].name.toString(),
                                )));
                      },
                      child: ScreenListTile(
                          title: lUserModel[index].name.toString(),
                          backgroundImage: '',
                          trailing: lGroupModel[index].recentMsg));
                },
                separatorBuilder: (BuildContext cxt, int index) {
                  return kHeight15;
                },
                itemCount: lUserModel.length),
          )
        ],
      ),
    );
  }
}
