import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_app/presentation/chatRoom/chatRoom.dart';

import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/mainPage/widgets/ScreenListTile.dart';
import 'package:chat_app/presentation/mainPage/widgets/carouselChild.dart';
import 'package:chat_app/presentation/web/mainPage/mainPage.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> images = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU"
];

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
      return 
           LayoutBuilder(
             builder: (context,constraints) {
               if(constraints.constrainWidth()<600){
                 return  Scaffold(
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
                            Text(
                              "Martina Wolna",
                              style: TextStyle(color: textColor, fontSize: 20.sp),
                            )
                          ],
                        ),
                        kHeight15,
                        Row(
                          children: [
                            CustomTextField(
                              padding: 12.h,
                              width: 275.w,
                              hintText: "search...",
                              isSuffixWidget: true,
                            ),
                            Expanded(child: kWidth15),
                            buttons(
                                height: 40.h,
                                color: Colors.blue,
                                width: 40.h,
                                widget: Text(
                                  "+",
                                  style: TextStyle(fontSize: 20.sp, color: textColor),
                                ))
                          ],
                        ),
                        kHeight15,
                        Text("Chat Rooms",
                            style: TextStyle(color: textColor, fontSize: 22)),
                        kHeight15,
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
                              GestureDetector(child: ScreenListTile(),
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatRoom()));
                              },),
                              ScreenListTile(),
                              ScreenListTile(),
                              ScreenListTile(),
                              ScreenListTile(),
                              ScreenListTile(),
                              ScreenListTile(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
               );
               }
               else{
                return WebMainPage();
               }
            
             }
           );
          
    
  }
}
