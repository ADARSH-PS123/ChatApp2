import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionsListTile extends StatelessWidget {
  const OptionsListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          kHeight15,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffB347EA),
                radius: 22.h,
                child: CircleAvatar(
                  radius: 20.h,
                  backgroundColor: backgroundColor,
                ),
              ),
              Spacer(),
              Text(
                "Name is s ",
                style: TextStyle(color: textColor, fontSize: 18.h),
              )
            ],
          ),
          kHeight15,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buttons(
                  height: 40.h,
                  color: Color(0xffB347EA),
                  width: 120.w,
                  widget: Text(
                    "Full access",
                    style: TextStyle(color: textColor, fontSize: 15.sp),
                  )),
              Spacer(),
              buttons(
                  height: 40.h,
                  color: Colors.grey,
                  width: 140.w,
                  widget: Text(
                    "Regal Acess",
                    style: TextStyle(color: textColor, fontSize: 15.sp),
                  )),
              Spacer(),
              buttons(
                  height: 40.h,
                  color: Colors.orange,
                  width: 40.h,
                  widget: buttons(
                      height: 38.h,
                      color: backgroundColor,
                      width: 38.h,
                      widget: Icon(
                        Icons.delete,
                        color: Colors.orange,
                      )))
            ],
          ),
          kHeight15
        ],
      ),
    );
  }
}
