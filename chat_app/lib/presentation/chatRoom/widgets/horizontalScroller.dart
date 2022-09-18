import 'package:chat_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalScroller extends StatelessWidget {
  const HorizontalScroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(50,(index)=>
      index%2==0?
       Padding(
         padding:  EdgeInsets.only(right: 10.w),
         child: CircleAvatar(backgroundColor:  Color(0xffB347EA),
                radius: 17.r,child: CircleAvatar(radius: 15.r,backgroundColor: backgroundColor,),
              ),
       ):  Padding(
         padding:  EdgeInsets.only(right: 10.w,top: 10.h),
         child: CircleAvatar(backgroundColor:  Color(0xffB347EA),
                radius: 17.r,child: CircleAvatar(radius: 15.r,backgroundColor: backgroundColor,),
              ),
       )
            )
        ,
      
    );
  }
}