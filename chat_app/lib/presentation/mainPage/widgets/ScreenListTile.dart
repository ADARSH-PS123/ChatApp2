import 'package:chat_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenListTile extends StatelessWidget {
  final String? title;
  final String? trailing;
  const ScreenListTile({Key? key, this.title, this.trailing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.only(left: 0, right: 10.w),
      leading: CircleAvatar(
        radius: 22.r,
      ),
      title: Text(
        title ?? "title",
        style: TextStyle(fontSize: 15.r),
      ),
      trailing: Text(trailing ?? "10:30 am"),
      textColor: textColor,
    );
  }
}
