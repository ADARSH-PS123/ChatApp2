import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalScroller extends StatelessWidget {
final List<UserModel>lUserModel;
  const HorizontalScroller({Key? key,required this.lUserModel,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.r,width: MediaQuery.of(context).size.width*.85,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
      
      itemCount:lUserModel.length,
      itemBuilder: (BuildContext context, int index) { 
          return  index % 2 == 0
            ? Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: CircleAvatar(
                  backgroundColor: Color(0xffB347EA),
                  radius: 24.r,
                  child: CircleAvatar(
                    radius: 22.r,
                   backgroundImage: 
       
      lUserModel[index].profilePhoto!.isNotEmpty? CachedNetworkImageProvider(lUserModel[index].profilePhoto!,
      
           
      ):AssetImage('assets/user.jpg') as ImageProvider,
                        ),
                ),
              )
            : Padding(
                padding: EdgeInsets.only(right: 10.w, top: 10.h),
                child: CircleAvatar(
                  backgroundColor: Color(0xffB347EA),
                  radius: 24.r,
                  child: CircleAvatar(
                    radius: 22.r,
                    backgroundImage: lUserModel[index].profilePhoto!.isNotEmpty? CachedNetworkImageProvider(lUserModel[index].profilePhoto!,
      
           
      ):AssetImage('assets/user.jpg') as ImageProvider,
                  ),
                ),
              );
         },),
    );
  }
}
