import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_app/application/mainScreenBloc/main_screen_bloc.dart';
import 'package:chat_app/domain/core/deBouncer.dart';
import 'package:chat_app/presentation/chatRoom/chatRoom.dart';

import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/mainPage/widgets/ScreenListTile.dart';
import 'package:chat_app/presentation/mainPage/widgets/carouselChild.dart';
import 'package:chat_app/presentation/web/mainPage/mainPage.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> images = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU"
];

class MainPage extends StatelessWidget {
  final String uid;
  MainPage({Key? key, required this.uid}) : super(key: key);
  String searchText = '';
  final _deBouncer = Debouncer(milliseconds: 700);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        BlocProvider.of<MainScreenBloc>(context)
            .add(MainScreenEvent.getUserInfo(uid: uid));

        return LayoutBuilder(builder: (context, constraints) {
          if (constraints.constrainWidth() < 600) {
            return Scaffold(
              body: Padding(
                padding: EdgeInsets.only(left: 30.w, top: 34.h, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22.r,
                        ),
                        kWidth15,
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
                              )
                      ],
                    ),
                    kHeight15,
                    Row(
                      children: [
                        CustomTextField(
                          onchanged: (value) {
                            _deBouncer.run(() {
                              searchText = value;
                              BlocProvider.of<MainScreenBloc>(context)
                                  .add(MainScreenEvent.serachUser(name: value));
                            });
                          },
                          height: 40,
                          padding: 12.h,
                          width: 275.w,
                          hintText: "search...",
                          isSuffixWidget: true,
                        ),
                        Expanded(child: kWidth15),
                        GestureDetector(
                          onTap: () {},
                          child: buttons(
                              height: 40.h,
                              color: Colors.blue,
                              width: 40.h,
                              widget: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20.sp, color: textColor),
                              )),
                        )
                      ],
                    ),
                    kHeight15,
                    Text(searchText.isEmpty ? "Chat Rooms" : "Search results",
                        style: TextStyle(color: textColor, fontSize: 22)),
                    kHeight15,
                    if (searchText.isEmpty)
                      Expanded(
                          child: ListView(
                        children: [
                          CarouselSlider(
                              items: [
                                CarouselChild(
                                  width: 95.w,
                                ),
                                CarouselChild(
                                  width: 95.w,
                                ),
                                CarouselChild(
                                  width: 95.w,
                                )
                              ],
                              options: CarouselOptions(
                                enableInfiniteScroll: false,
                                viewportFraction: .32,
                                height: 140.h,
                              )),
                          kHeight15,
                          GestureDetector(
                            child: ScreenListTile(),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ChatRoom(
                                        uid: uid,
                                      )));
                            },
                          ),
                          ScreenListTile(),
                          ScreenListTile(),
                          ScreenListTile(),
                          ScreenListTile(),
                          ScreenListTile(),
                          ScreenListTile(),
                        ],
                      ))
                    else if (state.isLoading)
                      Center(
                          child: CircularProgressIndicator(
                        color: textColor,
                      ))
                    else if (state.lUserModel.isEmpty)
                      Center(
                        child: Text(
                          "no users found",
                          style: TextStyle(color: textColor),
                        ),
                      )
                    else
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) => kHeight15,
                            itemCount: state.lUserModel.length,
                            itemBuilder: (BuildContext cxt, int index) {
                              return ScreenListTile(
                                title: state.lUserModel[index].name.toString(),
                              );
                            }),
                      )
                  ],
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
