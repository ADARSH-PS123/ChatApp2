import 'package:chat_app/application/RegBloc/register_bloc.dart';
import 'package:chat_app/application/mainScreenBloc/main_screen_bloc.dart';
import 'package:chat_app/application/signInBloc/sign_in_bloc.dart';
import 'package:chat_app/application/verifyBloc/verify_bloc.dart';
import 'package:chat_app/core/appCore.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/logInScreen.dart/loginScreen.dart';
import 'package:chat_app/presentation/mainPage/mainPage.dart';

import 'package:chat_app/presentation/registerPage/registerPage.dart';

import 'package:chat_app/presentation/web/logInScreen/logInScreen.dart';
import 'package:chat_app/presentation/web/mainPage/mainPage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'domain/core/di/configInjection.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjection();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: apiKey,
            appId: appId,
            messagingSenderId: messagingSenderId,
            projectId: projectId));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<MainScreenBloc>()),
        BlocProvider(create: (context) => getIt<RegisterBloc>()),
        BlocProvider(create: (context) => getIt<SignInBloc>()),
        BlocProvider(create: (context) => getIt<VerifyBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: ((context, child) => MaterialApp(
              theme: ThemeData(
                  scaffoldBackgroundColor: backgroundColor,
                  colorScheme: ColorScheme.fromSwatch()
                      .copyWith(secondary: backgroundColor),
                  primaryTextTheme: TextTheme()
                      .apply(bodyColor: textColor, displayColor: textColor)),
              debugShowCheckedModeBanner: false,
              home: BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) {
                  print(state
                  .isLoggedIn);
                  BlocProvider.of<SignInBloc>(context).add(const SignInEvent.prefGetUser());
                  return SafeArea(
                      child: LayoutBuilder(builder: (context, constraints) {
                    return Scaffold(
                        body: constraints.constrainWidth() < 600
                            ? (state.isLoggedIn? MainPage(uid: state.uid,) :AuthScreen())
                            : (state.isLoggedIn?WebMainPage(uid: state.uid,): WebLogInScreen()));
                  }));
                },
              ),
            )),
      ),
    );
  }
}
