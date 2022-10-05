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
  final Key? textFormKey;
  final TextEditingController? controller;
  String? Function(String?)? validator;
  String? Function(String)? onchanged;
  String? errorText;
  double? height;

  CustomTextField(
      {Key? key,
      this.controller,
      required this.hintText,
      this.textFormKey,
      this.validator,
      this.errorText,
      this.onchanged,
      required this.isSuffixWidget,
      this.icon,
      required this.padding,
      this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          width: isSuffixWidget ? (width - 40) : width,
          height: height,
          child: TextFormField(
              controller: controller,
              style: TextStyle(color: textColor),
              onChanged: onchanged,
              validator: validator,
              key: textFormKey,
              decoration: InputDecoration(
                fillColor: textFieldInnerColor,
                errorText: errorText,
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
            : const SizedBox()
      ],
    );
  }
}
