import 'package:chat_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenListTile extends StatelessWidget {
  const ScreenListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        contentPadding: EdgeInsets.only(left: 0, right: 10.w),
        leading: CircleAvatar(
          radius: 22.r,
        ),
        title: Text("Title",style: TextStyle(fontSize: 10.r),),
        subtitle: Text("Sub Title"),
        trailing: Text("trailing"),
        textColor: textColor,
      );
    
  }
}
