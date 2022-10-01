


import 'dart:async';

import 'package:chat_app/application/verifyBloc/verify_bloc.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/logInScreen.dart/loginScreen.dart';
import 'package:chat_app/domain/core/countDownTimer.dart';
import 'package:chat_app/presentation/widgetsCommon/snakbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class PageVerify extends StatefulWidget {
  PageVerify({Key? key}) : super(key: key);

  @override
  State<PageVerify> createState() => _PageVerifyState();
}
 Timer ? timer1;
class _PageVerifyState extends State<PageVerify>with WidgetsBindingObserver  {
  
  @override
  void initState() {
  WidgetsBinding.instance.addObserver(this);
    BlocProvider.of<VerifyBloc>(context).add(VerifyEvent.sendEmail());
 startTimer();
  
  timer1=Timer.periodic(Duration(seconds: 3), (t1){
BlocProvider.of<VerifyBloc>(context).add(const VerifyEvent.reload());
  });
    super.initState();
  }

  @override
  void dispose() {
     WidgetsBinding.instance.removeObserver(this);
    timer1!.cancel();
    stopTimer();
    super.dispose();
  }

@override
void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state.toString()+"8888888888888888888888888888888888888888");
    if(state==AppLifecycleState.detached){
       BlocProvider.of<VerifyBloc>(context).add(const VerifyEvent.deleteUnverifiedEmail());
  timer1!.cancel();
   stopTimer();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

   },);
    return WillPopScope(
      onWillPop: ()async {
        BlocProvider.of<VerifyBloc>(context).add(const VerifyEvent.deleteUnverifiedEmail());
  timer1!.cancel();
   stopTimer();
   return true;  },
      child: Scaffold(
        body: BlocListener<VerifyBloc, VerifyState>(
          listener: (context, state) {
            state.optionSuccessFailure.fold(
                () => '',
                (either) => either.fold(
                        (failure) => showSnackBar(context,
                            message: "error occured",
                            duration: Duration(seconds: 3)), (success) {
                      showSnackBar(
                          context, //if the user verified the email => show  success snakbar and navigate to log in page
                          message: success,
                          duration: Duration(seconds: 3));
                    
                    }));
                    if(state.isVerified){
                      print('verified');
                      stopTimer();
                      timer1!.cancel();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const AuthScreen()));
                    }
          },
          child: SafeArea(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "please verify the email ",
                  style: TextStyle(color: textColor, fontSize: 21),
                ),
                ValueListenableBuilder(
                    valueListenable: notifierTime,
                    builder: (BuildContext cxt, noti, _) {
                      return Text(
                        notifierTime.value.toString(),
                        style: TextStyle(color: textColor),
                      );
                    }),
                ValueListenableBuilder(
                    valueListenable: notifierTime,
                    builder: (BuildContext cxt, noti, _) {
                      return TextButton(
                        onPressed: notifierTime.value == "00:00"
                            ? () {
                                BlocProvider.of<VerifyBloc>(context)
                                    .add(const VerifyEvent.sendEmail());
                                startTimer();
                              }
                            : null,
                        child: Text("resend again"),
                      );
                    }),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
