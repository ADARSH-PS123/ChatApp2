import 'package:chat_app/presentation/chatRoom/chatRoom.dart';
import 'package:chat_app/presentation/chatRoom/chatRoomOptions.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/logInScreen.dart/loginScreen.dart';
import 'package:chat_app/presentation/mainPage/mainPage.dart';
import 'package:chat_app/presentation/web/logInScreen/logInScreen.dart';



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: ((context, child) => MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: backgroundColor,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: backgroundColor),
            primaryTextTheme: TextTheme().apply(
              bodyColor: textColor,displayColor: textColor
           )),
        debugShowCheckedModeBanner: false,
        home:  SafeArea(child: LayoutBuilder(
          builder: (context,constraints) {
            return 
            Scaffold(body:constraints.constrainWidth()<600?
             LogInScreen():
             WebLogInScreen());
          }
        )),
      )),
      
    );
  }
}
