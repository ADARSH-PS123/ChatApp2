import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buttons(
    {required double height,
    required Color color,
    required double width,
    required widget}) {
  return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp), color: color),
      child: Center(child: widget));
}
