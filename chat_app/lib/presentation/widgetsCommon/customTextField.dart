import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isSuffixWidget;
  final IconData? icon;
  final double width;
  final double padding;

  CustomTextField(
      {Key? key,
      required this.hintText,
      required this.isSuffixWidget,
      this.icon,
      required this.padding,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: [
          SizedBox(
            width: isSuffixWidget ? (width - 40) : width,
            height: 40,
            child: TextFormField(
                decoration: InputDecoration(
              fillColor: textFieldInnerColor,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.fromLTRB(8.w, 0, 0, padding),
              hintText: hintText,
              hintStyle: TextStyle(color: textColor, fontSize: 14),
            )),
          ),
          isSuffixWidget
              ? buttons(
                  height: 40,
                  color: Colors.grey,
                  width: 40,
                  widget: Icon(
                    icon ?? CupertinoIcons.search,
                    color: textColor,
                    size: 18,
                  ))
              : SizedBox()
        ],
      );
    
  }
}
