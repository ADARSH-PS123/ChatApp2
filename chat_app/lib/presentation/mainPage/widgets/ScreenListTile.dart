import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenListTile extends StatelessWidget {
  final String? title;
  final String backgroundImage;
  final String? trailing;
  const ScreenListTile(
      {Key? key, this.title, this.trailing, required this.backgroundImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      
      leading: CircleAvatar(
        radius: 22.r,
        backgroundImage:backgroundImage.isNotEmpty? CachedNetworkImageProvider(backgroundImage,
        
       
        ):AssetImage('assets/user.jpg') as ImageProvider,
      ),
      title: Text(
        title ?? "title",maxLines: 2,overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 15.r),
      ),
      trailing: SizedBox(width: 120.w,
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            trailing ?? "",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 13),),
        )),
      textColor: textColor,
    );
  }
}
