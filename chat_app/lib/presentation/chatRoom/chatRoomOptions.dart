import 'package:chat_app/presentation/chatRoom/widgets/optionsListTile.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRoomOptions extends StatelessWidget {
  const ChatRoomOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 52.h, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Chat Room Options",
            style: TextStyle(color: textColor, fontSize: 20.sp),
          ),
          kHeight,
          Row(
            children: [
              buttons(
                  height: 40.h,
                  color: Colors.blue,
                  width: 130.w,
                  widget: Text(
                    "new user",
                    style: TextStyle(color: textColor, fontSize: 15.sp),
                  )),
              Spacer(),
              buttons(
                  height: 40.h,
                  color: Colors.orange,
                  width: 185.w,
                  widget: Text("delete chatroom",
                      style: TextStyle(color: textColor, fontSize: 15.sp)))
            ],
          ),
          kHeight15,
          Text("chat room name",
              style: TextStyle(color: textColor, fontSize: 20.sp)),
          kHeight15,
          Expanded(
              child: ListView(
            children: List.generate(30, (index) => OptionsListTile()),
          ))
        ],
      ),
    );
  }
}
