import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_app/application/mainScreenBloc/main_screen_bloc.dart';
import 'package:chat_app/domain/core/deBouncer.dart';
import 'package:chat_app/presentation/chatRoom/chatRoom.dart';

import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/groupCreationPage/groupCreatePage.dart';
import 'package:chat_app/presentation/mainPage/widgets/ScreenListTile.dart';
import 'package:chat_app/presentation/mainPage/widgets/carouselChild.dart';
import 'package:chat_app/presentation/mainPage/widgets/idlePage.dart';
import 'package:chat_app/presentation/mainPage/widgets/searchPage.dart';
import 'package:chat_app/presentation/profilePage.dart/profilePage.dart';
import 'package:chat_app/presentation/web/mainPage/mainPage.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  final String uid;
  MainPage({Key? key, required this.uid}) : super(key: key);

  final _deBouncer = Debouncer(milliseconds: 700);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<MainScreenBloc>(context)
          .add(MainScreenEvent.showChatLists(uid: uid));
      BlocProvider.of<MainScreenBloc>(context)
          .add(MainScreenEvent.getUserInfo(uid: uid));
      BlocProvider.of<MainScreenBloc>(context)
          .add(MainScreenEvent.showUserList(uid: uid));
           BlocProvider.of<MainScreenBloc>(context)
          .add(MainScreenEvent.showPublicChatLists(uid: uid));
          
             
    });

    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
    
        return LayoutBuilder(builder: (context, constraints) {
          if (constraints.constrainWidth() < 600) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 34.h, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext cxt) =>
                                          ProfilePage()));
                                },
                                child: (state.userModel.profilePhoto ?? '').isEmpty
                                    ? CircleAvatar(
                                        radius: 13.r,
                                        backgroundImage:
                                            AssetImage('assets/user.jpg'),
                                      )
                                    : CircleAvatar(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30),
                                          child: CachedNetworkImage(
                                              errorWidget: (context, url, error) =>
                                                  const Image(
                                                      image: AssetImage(
                                                          'assets/user.jpg')),
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) {
                                                return const Image(
                                                    image: AssetImage(
                                                        'assets/user.jpg'));
                                              },
                                              imageUrl: state.userModel.profilePhoto
                                                  .toString()),
                                        ),
                                      ),
                              ),   kWidth15,
                          state.userModel.name != null
                              ? Text(
                                  state.userModel.name.toString(),
                                  style: TextStyle(
                                      color: textColor, fontSize: 20.sp),
                                )
                              : SizedBox(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                  height: 15.sp,
                                  width: 15.sp,
                                ),
                            ],
                          ),
                       

                          TextButton.icon(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return GroupCreatePage();
                                }));
                              },
                              icon: Icon(
                                CupertinoIcons.chat_bubble,
                                color: textColor,
                              ),
                              label: Text(
                                "create group",
                                style: TextStyle(color: textColor),
                              )),
                        ],
                      ),
                      kHeight15,
                      Row(
                        children: [
                          CustomTextField(
                            controller: searchController,
                            onchanged: (value) {
                              _deBouncer.run(() {
                           
                                BlocProvider.of<MainScreenBloc>(context).add(
                                    MainScreenEvent.serachUser(name: value));
                              });
                              if (value.isEmpty) {
                                BlocProvider.of<MainScreenBloc>(context).add(
                                    MainScreenEvent.showChatLists(uid: uid));
                                BlocProvider.of<MainScreenBloc>(context).add(
                                    MainScreenEvent.showUserList(uid: uid));
                              }
                            },
                            height: 40,
                            padding: 12.h,
                            width: 300.w,
                            hintText: "search...",
                            isSuffixWidget: true,
                          ),
                          Expanded(child: kWidth15),
                        ],
                      ),
                      kHeight15,
                      Text(searchController.text.isEmpty ? "Chat Rooms" : "Search results",
                          style: TextStyle(color: textColor, fontSize: 22)),
                      kHeight15,
                      if (state.isLoading)
                        Center(
                            child: CircularProgressIndicator(
                          color: textColor,
                        ))
                      else if (searchController.text.isEmpty)
                        IdlePage(
                          groupModelList:state.groupModelList,
                          lGroupModel: state.lGroupModel,
                          lUserModel: state.lUserModel,
                          myId: uid,
                        )
                      else if (state.lUserModel.isEmpty)
                        Center(
                          child: Text(
                            "no users found",
                            style: TextStyle(color: textColor),
                          ),
                        )
                      else if (searchController.text.isNotEmpty) //search page
                      SearchPage(lUserModel: state.lUserModel,uid: uid,)
                    ],
                  ),
                ),
              ),
            );
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
