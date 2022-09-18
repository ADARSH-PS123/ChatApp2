

import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/mainPage/mainPage.dart';


import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';

class WebLogInScreen extends StatelessWidget {
  const WebLogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return
    Center(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
                    CustomTextField(
                      hintText: "email",
                      isSuffixWidget: false,
                      padding: 0,
                      width: 150.w,
                    ),
                    kHeight,
                    CustomTextField(
                        hintText: "password",
                        isSuffixWidget: false,
                        padding: 0,
                        width: 150.w),kHeight,
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage()));
                          },
                          child: buttons(
                              height: 40,
                              color: Colors.blue,
                              width: 67.5.w,
                              widget: Text('log in ',  style:
                                        TextStyle(color: textColor, fontSize: 15),)),
                        ),SizedBox(width: 15.w,),
                        buttons(
                            height: 40,
                            color: Colors.blue,
                            width: 67.5.w,
                            widget: Text('new user ?',  style:
                                      TextStyle(color: textColor, fontSize: 15),))
                      ],
                    )
                  ]),
      ),
    );
  }
}