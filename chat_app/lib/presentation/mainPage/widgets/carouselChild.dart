import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/mainPage/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselChild extends StatelessWidget {
  double width;
   CarouselChild({Key? key,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
    child: Center(child: Text("its me",style: TextStyle(color: textColor),)),
    width: width,
      decoration:BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(30.h),
        image: DecorationImage(image: NetworkImage(images[0]),fit: BoxFit.cover)
      )
    );
  }
}