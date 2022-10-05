import 'package:chat_app/application/signInBloc/sign_in_bloc.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/mainPage/mainPage.dart';
import 'package:chat_app/presentation/web/regPage/regPage.dart';

import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:chat_app/presentation/widgetsCommon/snakbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';

class WebLogInScreen extends StatelessWidget {
  WebLogInScreen({Key? key}) : super(key: key);
  final _formKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.optionSucessOrFailure.fold(
            () => null,
            (either) => either.fold((l) async {
                  String errorMessage = state.optionSucessOrFailure.fold(
                      () => "null",
                      (either) => either.fold(
                          (l) => l
                              .toString()
                              .replaceRange(0, 19, "")
                              .replaceAll("()", ""),
                          (r) => "Success"));

                  showSnackBar(context,
                      duration: Duration(seconds: 3), message: errorMessage);
                }, (r) {
                  emailController.clear();
                  passwordController.clear();
                  
                }));
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      controller: emailController,
                      hintText: "email",
                      isSuffixWidget: false,
                      padding: 0,
                      width: 150.w,
                      validator: (p0) {
                        if (p0 == null || p0.isEmpty) {
                          print("if block");
                          return "please enter something";
                        } else if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(p0)) {
                          print("else if");
                          return null;
                        } else {
                          print("else block");
                          return "invalid email";
                        }
                      },
                    ),
                    kHeight,
                    CustomTextField(
                      controller: passwordController,
                      hintText: "password",
                      isSuffixWidget: false,
                      padding: 0,
                      width: 150.w,
                      validator: (outvalue) {
                        if (outvalue == null || outvalue.length < 8) {
                          return "minimun of 8 char required";
                        } else {
                          return null;
                        }
                      },
                    ),
                    kHeight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (_formKey1.currentState!.validate()) {
                              BlocProvider.of<SignInBloc>(context).add(
                                  SignInEvent.logIn(
                                      email: emailController.text,
                                      password: passwordController.text));
                            }
                          },
                          child: buttons(
                              height: 40,
                              color: Colors.blue,
                              width: 67.5.w,
                              widget: Text(
                                'log in ',
                                style:
                                    TextStyle(color: textColor, fontSize: 15),
                              )),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            emailController.clear();
                            passwordController.clear();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebLRegInScreen()));
                          },
                          child: buttons(
                              height: 40,
                              color: Colors.blue,
                              width: 67.5.w,
                              widget: Text(
                                'new user ?',
                                style:
                                    TextStyle(color: textColor, fontSize: 15),
                              )),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        );
      },
    );
  }
}
